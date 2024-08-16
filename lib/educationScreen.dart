import 'package:flutter/material.dart';
import 'package:flutter_task/Resourceservice.dart';

class EducationalResourcesScreen extends StatefulWidget {
  @override
  _EducationalResourcesScreenState createState() =>
      _EducationalResourcesScreenState();
}

class _EducationalResourcesScreenState
    extends State<EducationalResourcesScreen> {
  late Future<List<Map<String, dynamic>>> resourcesFuture;

  @override
  void initState() {
    super.initState();
    resourcesFuture = ResourceService().fetchResources();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Resources'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: resourcesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No resources available.'));
          } else {
            final resources = snapshot.data!;
            return ListView.builder(
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
            );
          }
        },
      ),
    );
  }
}
