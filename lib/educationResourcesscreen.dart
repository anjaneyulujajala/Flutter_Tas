import 'package:flutter/material.dart';

class EducationalResourcesScreen extends StatelessWidget {
  final List<Map<String, String>> resources = [
    {
      'title': 'Managing Stress',
      'description': 'Learn effective techniques to handle and reduce stress.',
      'type': 'Article',
    },
    {
      'title': 'Understanding Emotions',
      'description': 'Explore the causes and solutions for various emotions.',
      'type': 'Video',
    },
    {
      'title': 'Improving Sleep Quality',
      'description': 'Discover strategies to improve your sleep quality.',
      'type': 'Podcast',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Resources'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: resources.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text(resources[index]['title'] ?? ''),
              subtitle: Text(resources[index]['description'] ?? ''),
              trailing: Text(resources[index]['type'] ?? ''),
              onTap: () {
                // Handle resource tap
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(resources[index]['title'] ?? ''),
                      content: Text(resources[index]['description'] ??
                          'Content not available.'),
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
