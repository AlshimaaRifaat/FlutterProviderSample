import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/features/home/presentations/view_model/messages_viewmodel.dart';
import 'package:flutter_example/features/home/presentations/views/home_screen.dart';
import 'package:flutter_example/features/login/presentations/view_model/sign_in_viewmodel.dart';
import 'package:flutter_example/features/login/presentations/views/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>SignInViewModel()),
    ChangeNotifierProvider(create: (_)=>MessagesViewModel()),
  ],
      child:const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  LoginScreen(),
    );
  }
}


