import 'package:flutter/material.dart';
import 'package:flutter_task/challengeCart.dart';
import 'package:flutter_task/model.dart';

class ChallengeScreen extends StatelessWidget {
  final List<Challenge> challenges = [
    Challenge(title: 'Meditation', description: '10 minutes of meditation.'),
    Challenge(
        title: 'Gratitude Journal',
        description: 'Write 3 things you are grateful for.'),
    Challenge(
        title: 'Morning Walk', description: 'Go for a 20-minute walk outside.'),
    Challenge(
        title: 'Healthy Breakfast',
        description:
            'Prepare a nutritious breakfast with fruits and vegetables.'),
    Challenge(
        title: 'Deep Breathing',
        description: 'Practice deep breathing exercises for 5 minutes.'),
    Challenge(
        title: 'Read a Book',
        description: 'Read 30 pages of a book you enjoy.'),
    Challenge(
        title: 'Mindful Eating',
        description:
            'Eat your meals without distractions and savor each bite.'),
    Challenge(
        title: 'Daily Affirmations',
        description:
            'Write and repeat 3 positive affirmations about yourself.'),
    Challenge(
        title: 'Journaling',
        description:
            'Spend 10 minutes writing about your thoughts and feelings.'),
    Challenge(
        title: 'Physical Exercise',
        description: 'Do a 30-minute workout or exercise routine.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Challenge'),
      ),
      backgroundColor: const Color.fromARGB(255, 40, 140, 186),
      body: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          return ChallengeCard(challenge: challenges[index]);
        },
      ),
    );
  }
}
