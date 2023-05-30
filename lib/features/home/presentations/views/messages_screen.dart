import 'package:flutter/material.dart';
import 'package:flutter_example/core/widgets/app_text.dart';
import 'package:flutter_example/core/widgets/chat_item.dart';
import 'package:flutter_example/core/widgets/expandable_widget.dart';

class MessagesScreen extends StatelessWidget {
   MessagesScreen();

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
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ChatItem(),
              separatorBuilder: (context, index) =>
                  const SizedBox(
                    height: 20.0,
                  ),
              itemCount: 15,
            ),
          ],
        ),
      ),
    );
}



