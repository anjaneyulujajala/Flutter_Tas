import 'package:flutter/material.dart';
import 'package:flutter_task/Moodinput.dart';

class MoodTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Tracker'),
      ),
      backgroundColor: Color(0xDFCBBBBF),
      body: MoodInput(),
    );
  }
}
