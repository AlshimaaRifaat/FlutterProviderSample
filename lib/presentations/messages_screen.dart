import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sponsored',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            buildExpandableWidget(),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'More Conversations',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buildChatItem(),
              separatorBuilder: (context, index) =>
                  SizedBox(
                    height: 20.0,
                  ),
              itemCount: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpandableWidget() {
    return Column(
      children: [
        ExpandablePanel(
          header: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22.25,
                child: Image.asset('assets/images/user.png'),

              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Original Coast Clothing',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],

          ),
          collapsed: SizedBox(
            height: 2,
          ),
          expanded:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7,
              ),
            Text(
            'Fall favorites in',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
              SizedBox(
                height: 10,
              ),
          Image.asset(
            'assets/images/clothes.png',
            fit: BoxFit.cover,),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
            Expanded(
              child: Text(
              'Free shipping in any purchase over 50\$',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
          ),
            ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.blue),
            ),
            child: const Text('Shop Now',
            style: TextStyle(
              color: Colors.blue
            ),),
          ),
          ],
        ),

      ],
    ),)
    ,

    ]
    ,
    );
  }
}

Widget buildChatItem() =>
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
            Padding(
              padding: const EdgeInsetsDirectional.only(
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
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Shimaa Refaat',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Text(
                    'Mon',
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Hello shimaa ,My name is Aliaa , How are you?',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
