import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginGmail extends StatelessWidget {
  const LoginGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
