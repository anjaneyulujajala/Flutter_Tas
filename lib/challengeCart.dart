import 'package:flutter/material.dart';
import 'package:flutter_task/model.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;

  ChallengeCard({required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              challenge.title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(challenge.description),
          ],
        ),
      ),
    );
  }
}
