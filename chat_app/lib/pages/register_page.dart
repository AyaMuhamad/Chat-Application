import 'package:flutter/material.dart';

import '../constants.dart';
import '../weidgets/custom_button.dart';
import '../weidgets/custom_text_feild.dart';
import 'chat_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';
  String? email;
  String? password;
  GlobalKey<FormState> gloabelkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Form(
          key: gloabelkey,
          child: ListView(children: [
            // const Spacer(
            //   flex: 4,
            // ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'pacifico',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // const Spacer(
            //   flex: 2,
            // ),
            const Row(
              children: [
                Text(
                  'SignUp',
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
              text: 'REGISTER',
              onTap: () {
                // if(gloabelkey.currentState!.validate()){

                // }

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
                  'do you have an account ?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    ' LogIn',
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
      ),
    );
  }
}
