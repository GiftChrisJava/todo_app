// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:todoapp1/pages/homepage.dart';
import 'package:todoapp1/pages/settingspage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
// index
  int _selectedIndex = 0;

  // method to update the new selected index.
  void _navigateBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // create a list of pages
  final List _pages = [
    //home page
    Homepage(),

    // settings
    Settingspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("1st page"),
        ),
      ),

      body: _pages[_selectedIndex],

      // create the body
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottom,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
