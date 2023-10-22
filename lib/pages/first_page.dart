// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                //GO  to homw page
                Navigator.pushNamed(context, "/homepage");
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                //GO  to homw page
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
