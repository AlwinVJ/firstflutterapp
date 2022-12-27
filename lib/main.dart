// This is a sample flutter mobile application development

import 'package:flutter/material.dart';
import 'package:yfsampleproject/widgets/container.dart';

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
      home: MyWidget()
    );
  }
}
