import 'package:flutter/material.dart';
import 'package:flutter_example/app_constants.dart';
import 'package:flutter_example/core/widgets/app_text.dart';
import 'package:flutter_example/core/widgets/chat_item.dart';
import 'package:flutter_example/core/widgets/expandable_widget.dart';
import 'package:flutter_example/features/home/data/models/enum.dart';
import 'package:flutter_example/features/home/data/models/message_response.dart';
import 'package:flutter_example/features/home/presentations/view_model/messages_viewmodel.dart';
import 'package:provider/provider.dart';



class MessagesScreen extends StatelessWidget {

   List<MessageResponse> msgsList = [];
   MessagesScreen(this.msgsList);

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
              child:  Consumer<MessagesViewModel>(builder: (context, data, child) {
                 if (data.status == Status.loading) {
                   return const Center(child: CircularProgressIndicator(),);
                 } else if (data.status == Status.success) {
                   return msgsList.length==0 ?  getAllMessagesList(data.messagesListResponse)
                   : getAllMessagesList(msgsList);
                 }else if (data.status == Status.noInternet) {
                   return const Material(
                     child: Center(
                       child: Text(Constants.no_internet_Connection),
                     ),
                   );
                 }else if (data.status == Status.none) {
                   return const Material(
                     child: Center(
                       child: Text(Constants.welcome),
                     ),
                   );
                 } else {
                   return const Material(
                     child: Center(
                       child: Text(Constants.API_Call_Error),
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

  Widget getAllMessagesList(List<MessageResponse> msgsList) {
      return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => ChatItem(msgsList, index),
        separatorBuilder: (context, index) =>
        const SizedBox(
          height: 20.0,
        ),
        itemCount: msgsList.length,
      );

  }


}



