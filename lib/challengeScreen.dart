import 'package:flutter/material.dart';
import 'package:flutter_task/api_server.dart';
import 'package:flutter_task/challengeCart.dart';
import 'package:flutter_task/model.dart';

class ChallengeScreen extends StatefulWidget {
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  late Future<List<Challenge>> _challenges;

  @override
  void initState() {
    super.initState();
    _challenges = ApiService().fetchChallenges();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Challenge'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: FutureBuilder<List<Challenge>>(
        future: _challenges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No challenges available.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ChallengeCard(challenge: snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }
}
