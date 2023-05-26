import 'package:flutter/material.dart';
import 'package:flutter_example/presentations/home_screen.dart';
import 'package:flutter_example/presentations/utils/app_constants.dart';
import 'package:flutter_example/presentations/widgets/app_text_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen() ;
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
             const Text( Constants.login,
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
                hintText:Constants.type_your_username ,
                icon: Icons.email),
            const SizedBox(
              height: 20,
            ),
            AppTextField(
                textController: passwordController,
                hintText: Constants.type_your_password,
                icon: Icons.password_sharp),
            const SizedBox(
              height: 50,
            ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(colors: [
                    Colors.deepOrange,
                    Colors.blue,
                  ])),

              child: const Center(
                child: Text(
                  Constants.LOGIN,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(Constants.signUp_using,
                style: TextStyle(
                    fontSize: 14),
              ),
            ),
            const SizedBox(
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
                const SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26.25,
                  child: Image.asset('assets/images/twitter.png'),

                ),
                const SizedBox(
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
            const Center(
              child: Text(
                'Or Sign up using',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                Constants.signUp,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
    );
  }


}
