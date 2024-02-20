import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/weidgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../weidgets/custom_text_feild.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView(children: [
          const SizedBox(
            height: 50,
          ),
          // const Spacer(
          //   flex: 4,
          // ),
          Image.asset(
            'assets/images/scholar.png',
            height: 100,
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'pacifico',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          // const Spacer(
          //   flex: 2,
          // ),
          const Row(
            children: [
              Text(
                'LogIn',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            onChanged: (data) {
              email = data;
            },
            hint: 'Email ',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFeild(
            onChanged: (data) {
              password = data;
            },
            hint: 'Password',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            text: 'LOGIN',
            onTap: () {
              Navigator.pushNamed(context, ChatPage.id);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'don\'t have an account ?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                child: const Text(
                  ' SignUp',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffC7EDE6),
                  ),
                ),
              ),
            ],
          ),
          // const Spacer(
          //   flex: 7,
          // ),
        ]),
      ),
    );
  }
}
