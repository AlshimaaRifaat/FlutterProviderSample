import 'package:flutter/material.dart';
import 'package:flutter_example/features/home/data/models/message_response.dart';

class ChatItem extends StatelessWidget {
   ChatItem(this.msgsList,this.index,{Key? key}) : super(key: key);

  List<MessageResponse> msgsList = [];
  int index;
  @override
  Widget build(BuildContext context)  =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                child: Image.asset(
                    'assets/images/user.png'),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:  [
                    Text(
                      msgsList[index].userName ?? '',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Text(
                      msgsList[index].time ?? '',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  msgsList[index].message ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      );
}
