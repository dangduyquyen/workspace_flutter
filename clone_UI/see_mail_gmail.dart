import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeMail extends StatelessWidget {
  const SeeMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEE mail", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
