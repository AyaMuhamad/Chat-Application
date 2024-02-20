import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  //   WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class DefaultFirebaseOptions {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      routes: {
        'LogInPage': (context)=>  LogIn(),
        RegisterPage.id: (context) =>  RegisterPage(),
        ChatPage.id :(context) => ChatPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'LogInPage',
     // home: RegisterPage(),
    ); 
  }
}
