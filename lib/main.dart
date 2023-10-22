// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp1/pages/first_page.dart';
import 'package:todoapp1/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove the debug bunner
      home: FirstPage(),
      routes: {
        '/fistpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
