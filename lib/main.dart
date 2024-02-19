import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_project/input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Sugar Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: inputScreen(),
      ),
    );
  }
}
