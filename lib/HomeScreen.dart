import 'package:flutter/material.dart';
import 'package:flutter_task/ModdtrackScreen.dart';
import 'package:flutter_task/WellnessPlan.dart';
import 'package:flutter_task/challenge.dart';
import 'package:flutter_task/communityScreen.dart';
import 'package:flutter_task/educationResourcesscreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MindGlow'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChallengeScreen()),
                );
              },
              child: Text('Daily Challenge'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoodTrackerScreen()),
                );
              },
              child: Text('Mood Tracker'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WellnessPlanScreen()),
                );
              },
              child: Text('Wellness Plan'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
              },
              child: Text('Community'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EducationalResourcesScreen()),
                );
              },
              child: Text('Educational'),
            ),
          ],
        ),
      ),
    );
  }
}
