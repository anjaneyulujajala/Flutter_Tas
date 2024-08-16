import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  final List<Map<String, String>> discussions = [
    {
      'title': 'Anjaneyulu: Managing Stress',
      'description': 'Learn effective techniques to handle and reduce stress.'
    },
    {
      'title': 'Aswitha 2: Understanding Anxiety',
      'description': 'Explore the causes and solutions for anxiety.'
    },
    {
      'title': 'Prasad 3: Tips for Better Sleep',
      'description': 'Discover strategies to improve your sleep quality.'
    },
    {
      'title': 'Raj 4: Practicing Gratitude',
      'description':
          'Understand the benefits of gratitude and how to practice it.'
    },
    {
      'title': 'Mahesh 5: Building Healthy Habits',
      'description': 'Learn how to develop and maintain healthy habits.'
    },
    {
      'title': 'Anjaneyulu 6: Mindful Eating',
      'description':
          'Explore the principles of mindful eating for better health.'
    },
    {
      'title': 'Divya 7: Overcoming Negative Thoughts',
      'description': 'Strategies to challenge and overcome negative thinking.'
    },
    {
      'title': 'Mounika 8: Staying Motivated',
      'description':
          'Tips and techniques to stay motivated and achieve your goals.'
    },
    {
      'title': 'Bhavani 9: The Power of Meditation',
      'description': 'Understand how meditation can enhance your well-being.'
    },
    {
      'title': 'Ramudu 10: Work-Life Balance',
      'description':
          'Strategies for achieving a healthy balance between work and personal life.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: discussions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text(discussions[index]['title'] ?? ''),
              subtitle: Text(discussions[index]['description'] ?? ''),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(discussions[index]['title'] ?? ''),
                      content: Text(discussions[index]['description'] ??
                          'This is a placeholder for the discussion.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
