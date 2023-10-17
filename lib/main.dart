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
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text("My App Bar "),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.deepPurple, // the contaiber a color
                  // curve the corners a bit
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(25),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 95,
              )),
        ),
      ),
    ); // shows a black screen
  }
}
