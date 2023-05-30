import 'package:flutter/material.dart';
import 'package:flutter_example/app_constants.dart';
import 'package:flutter_example/core/widgets/custom_text_field.dart';
import 'package:flutter_example/features/home/presentations/views/messages_screen.dart';
import 'package:flutter_example/features/login/presentations/views/active_screen.dart';
import 'package:flutter_example/features/login/presentations/views/calls_screen.dart';
import 'package:flutter_example/features/login/presentations/views/groups_screen.dart';


class HomeScreen extends StatelessWidget
{
  var searchKeyController = TextEditingController();
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0.0,
          titleSpacing: 20.0,
          leading:   Row(
            children: [
              const SizedBox(
                width: 15.0,
              ),
              CircleAvatar(
                radius: 20.0,
                child: Image.asset('assets/images/user.png'),
              ),
            ],
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: 'Search',
                  icon: Icons.search,
                  textController: searchKeyController,
                ),
              ),
            ],
          ),
          actions: [

            IconButton(
              icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.blue,

            unselectedLabelColor: Colors.grey,

            labelStyle: TextStyle(fontWeight: FontWeight.bold),

            unselectedLabelStyle:  TextStyle(fontStyle: FontStyle.italic),

            tabs: [
              Tab( text:Constants.msgs,),
              Tab( text:Constants.active),
              Tab( text:Constants.groups),
              Tab( text: Constants.calls),
            ],
          ),
        ),

        body:  TabBarView(
          children: [ MessagesScreen(),ActiveScreen(),GroupsScreen(),CallsScreen()],
        ) ,
      ),
    ),
  );







}