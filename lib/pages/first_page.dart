// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp1/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("1st page"),
        ),
      ),

      // create the body
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          onPressed: () {
            // naviage to second page
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
