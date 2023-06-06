import 'package:flutter/material.dart';
import 'package:flutter_example/app_constants.dart';
import 'package:flutter_example/app_images.dart';
import 'package:flutter_example/core/widgets/custom_text_field.dart';
import 'package:flutter_example/features/home/data/models/message_response.dart';
import 'package:flutter_example/features/home/presentations/view_model/messages_viewmodel.dart';
import 'package:flutter_example/features/home/presentations/views/messages_screen.dart';
import 'package:flutter_example/features/login/presentations/views/active_screen.dart';
import 'package:flutter_example/features/login/presentations/views/calls_screen.dart';
import 'package:flutter_example/features/login/presentations/views/groups_screen.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var searchKeyController = TextEditingController();

  String? value;

  late MessageResponse messagesListResponse;

  List<MessageResponse> msgsList = [];

  late MessagesViewModel _msgViewModel;

  @override
  void initState() {
    // TODO: implement initState
    _msgViewModel = Provider.of<MessagesViewModel>(context, listen: false);
    _msgViewModel.getSearchList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: SafeArea(
      child: Consumer<MessagesViewModel>(builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            elevation: 0.0,
            titleSpacing: 20.0,
            leading: Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                CircleAvatar(
                  radius: 20.0,
                  child: Image.asset(AppImages.user),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<MessagesViewModel>(builder: (context, data, child) {
                  return Expanded(
                    child: CustomTextField(
                        hintText: AppConstants.search,
                        icon: Icons.search,
                        textController: searchKeyController,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            setState(() {
                              msgsList = data.messagesListResponse;
                            });
                          } else {
                            setState(() {
                              msgsList = data.messagesListResponse.where((element) =>
                                  element.userName.toLowerCase().contains(
                                      value.toLowerCase())).toList();
                            });
                          }
                        }
                    ),
                  );
                }
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

              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),

              tabs: [
                Tab(text: AppConstants.msgs,),
                Tab(text: AppConstants.active),
                Tab(text: AppConstants.groups),
                Tab(text: AppConstants.calls),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              MessagesScreen(msgsList),
              const ActiveScreen(),
              const GroupsScreen(),
              const CallsScreen()
            ],
          ),
        );
      }
      ),
    ),
  );
}