import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Text('User Account'),
        centerTitle: true,
        //Backgroung color
        backgroundColor: Colors.green[600],
        //Leading - left-side of the appbar, leading is property
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.manage_accounts)),
        // Actions - right-side of the appbar, action is a property
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        //Shape property determines the property of the app bar
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        // Elevation property controls the z axis of the app bar
        // and gives a dropshadow to the appbar
        elevation: 20.5,
      ),

      body: Center(
          // Container widget 
          child: Container(
            // Some properties like height,width are used  below
        height: 300, // Height of the container
        width: double.infinity, // Width of the container
        margin: EdgeInsets.all(20), /// Margin of the container to seperate the 
        // container from the scaffold
        alignment: Alignment.center,
        // decoration property is used to style the container
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(color: Colors.green, width: 8),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(5, 5), blurRadius: 10)
            ]),
// The container class contains a child in which the text which is to be displayed is
// entered
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 50),
        ),
      )),
    );
  }
}
