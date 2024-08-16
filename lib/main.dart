import 'package:flutter/material.dart';
import 'package:flutter_task/HomeScreen.dart';

void main() {
  runApp(MindGlowApp());
}

class MindGlowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindGlow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
