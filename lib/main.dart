import 'package:flutter/material.dart';
import 'package:flutter_custom_drawer/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
