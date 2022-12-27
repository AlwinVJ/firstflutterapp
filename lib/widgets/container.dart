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
          child: Container(
        height: 300,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(color: Colors.green, width: 8),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(5, 5), blurRadius: 10)
            ]),
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 50),
        ),
      )),
    );
  }
}
