import 'package:flutter/material.dart';

class MoodInput extends StatefulWidget {
  @override
  _MoodInputState createState() => _MoodInputState();
}

class _MoodInputState extends State<MoodInput> {
  String? _mood;

  void _saveMood() {
    print('Mood saved: $_mood');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('How are you feeling today?', style: TextStyle(fontSize: 24)),
          DropdownButton<String>(
            value: _mood,
            items: ['Happy', 'Sad', 'Neutral', 'Stressed'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _mood = newValue;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _saveMood,
            child: Text('Save Mood'),
          ),
        ],
      ),
    );
  }
}
