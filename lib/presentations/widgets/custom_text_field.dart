import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  CustomTextField({Key? key,

    required this.textController,
    required this.hintText,
    required this.icon,
    this.isObscure=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin:EdgeInsets.all(5),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        color: Colors.white70,
      ),
      child: TextField(
        obscureText: isObscure? true : false,
        controller: textController,
        decoration: InputDecoration(
          //hintText,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 15),
            // prefixIcon
            prefixIcon: Icon(icon,
              color:Colors.grey,
              size: 17,
            ),
          border: InputBorder.none,
            //focusedBorder
            // enabledBorder
            //
            // border

        ),
      ),
    );
  }
}