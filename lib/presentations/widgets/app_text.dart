import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({Key? key,
  required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
