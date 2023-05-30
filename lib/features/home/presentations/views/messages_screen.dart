import 'package:flutter/material.dart';
import 'package:flutter_example/core/widgets/app_text.dart';
import 'package:flutter_example/core/widgets/chat_item.dart';
import 'package:flutter_example/core/widgets/expandable_widget.dart';
import 'package:flutter_example/features/home/data/models/enum.dart';
import 'package:flutter_example/features/home/data/models/message_response.dart';
import 'package:flutter_example/features/home/presentations/view_model/messages_viewmodel.dart';
import 'package:provider/provider.dart';

class MessagesScreen extends StatefulWidget {
   MessagesScreen();

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
   late MessageResponse messagesListResponse;

   List<MessageResponse> msgsList = [];

   late MessagesViewModel _msgViewModel;

   @override
   void initState() {
     // TODO: implement initState
     _msgViewModel = Provider.of<MessagesViewModel>(context, listen: false);
     _msgViewModel.getSearchList();
     super.initState();
   }

  Widget build(BuildContext context) =>
     Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(text: 'Sponsored'),
            const SizedBox(
              height: 20.0,
            ),
            const ExpandableWidget(),
            const SizedBox(
              height: 20.0,
            ),
            const AppText(text: 'More Conversations'),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              child:  Consumer<MessagesViewModel>(builder: (context, item, child) {
                 if (item.status == Status.loading) {
                   return const Center(child: CircularProgressIndicator(),);
                 } else if (item.status == Status.success) {
                   msgsList= item.messagesListResponse ;
                   return ListView.separated(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemBuilder: (context, index) => ChatItem(msgsList,index),
                     separatorBuilder: (context, index) =>
                     const SizedBox(
                       height: 20.0,
                     ),
                     itemCount: msgsList.length,
                   );
                 }else if (item.status == Status.noInternet) {
                   return const Material(
                     child: Center(
                       child: Text('No internet Connection'),
                     ),
                   );
                 }else if (item.status == Status.none) {
                   return const Material(
                     child: Center(
                       child: Text('Wel come'),
                     ),
                   );
                 } else {
                   return const Material(
                     child: Center(
                       child: Text('API Call Error'),
                     ),
                   );
                 }
              }
            ),
            ),
          ],
        ),
      ),
    );
}



