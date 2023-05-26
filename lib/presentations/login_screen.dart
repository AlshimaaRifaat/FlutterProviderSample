import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/presentations/home_screen.dart';
import 'package:flutter_example/presentations/widgets/app_text_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen() : super();



  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


    return  Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text('Login',
              style: TextStyle(
                  fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextField(
                textController: emailController,
                hintText: "Type your username",
                icon: Icons.email),
            SizedBox(
              height: 20,
            ),
            AppTextField(
                textController: passwordController,
                hintText: "Type your password",
                icon: Icons.password_sharp),
            SizedBox(
              height: 50,
            ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [
                  Colors.deepOrange,
                  Colors.blue,
                ])),

            child: Center(
              child: Text(
                'LOGIN',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Text('Or Sign Up using',
                style: TextStyle(
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Color.fromRGBO(37, 107, 239, 1),
                  radius: 26.25,
                  child: Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26.25,
                  child: Image.asset('assets/images/twitter.png'),

                ),
                SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 26.25,
                  child: Image.asset('assets/images/google.png'),

                ),
              ],
            ),

            Spacer(),
            Center(
              child: Text(
                'Or Sign up using',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Sign up',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
    );
  }


}
