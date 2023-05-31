import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;

  CustomTextField({Key? key,

    required this.textController,
    required this.hintText,
    required this.icon,
     this.onSubmitted,
     this.onChanged,
    this.isObscure=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin:const EdgeInsets.all(5),
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
            hintStyle: const TextStyle(fontSize: 15),
            // prefixIcon
            prefixIcon: Icon(icon,
              color:Colors.grey,
              size: 17,
            ),
          border: InputBorder.none,
        ),
        onSubmitted: onSubmitted ,
        onChanged: onChanged,
      ),
    );
  }
}