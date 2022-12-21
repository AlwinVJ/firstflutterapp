// This is a sample flutter mobile application development

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter Application',
      home: Scaffold(
        // App Bar
        appBar: AppBar(
          title: Text('User Account'),
          centerTitle: true,
          //Backgroung color
          backgroundColor: Colors.green[600],
           //Leading - left-side of the appbar, leading is property
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.manage_accounts)),
          // Actions - right-side of the appbar, action is a property
          actions:[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          //Shape property determines the property of the app bar
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          // Elevation property controls the z axis of the app bar
          // and gives a dropshadow to the appbar
          elevation: 20.5,
        ),
         
        body: Center(
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
