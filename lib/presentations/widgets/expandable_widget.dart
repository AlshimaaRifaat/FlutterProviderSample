import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget();

  @override
  Widget build(BuildContext context) =>
      Column(
        children: [
          ExpandablePanel(
            header: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.25,
                  child: Image.asset('assets/images/user.png'),

                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'Original Coast Clothing',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],

            ),
            collapsed: const SizedBox(
              height: 2,
            ),
            expanded:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'Fall favorites in',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/clothes.png',
                  fit: BoxFit.cover,),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Free shipping in any purchase over 50\$',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 2.0, color: Colors.blue),
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
