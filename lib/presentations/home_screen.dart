import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_example/presentations/active_screen.dart';
import 'package:flutter_example/presentations/calls_screen.dart';
import 'package:flutter_example/presentations/groups_screen.dart';
import 'package:flutter_example/presentations/messages_screen.dart';
import 'package:flutter_example/presentations/widgets/app_text_field.dart';
import 'package:flutter_example/presentations/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget
{
  var searchKeyController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
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
                SizedBox(
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
                icon: CircleAvatar(
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

              labelStyle: const TextStyle(fontWeight: FontWeight.bold),

              unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),

              tabs: [
                Tab( text:'Messages',
                ),
                Tab( text:'Active'),
                Tab( text:'Groups'),
                Tab( text:'Calls'),
              ],
            ),
          ),

          body: const TabBarView(
            children: [ MessagesScreen(),ActiveScreen(),GroupsScreen(),CallsScreen()],
          ) ,
        ),
      ),
    );
  }







}