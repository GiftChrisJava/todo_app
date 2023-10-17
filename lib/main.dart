// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove the debug bunner
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.deepPurple, // the contaiber a color
            child: Text("Gift Chris"),
          ),
        ),
      ),
    ); // shows a black screen
  }
}
