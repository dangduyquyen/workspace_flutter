import 'package:clone_ui_gmail/mail_gmail.dart';
import 'package:clone_ui_gmail/login.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: MailGmail(),
      debugShowCheckedModeBanner: false,

    );
  }
}