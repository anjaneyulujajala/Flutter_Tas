import 'package:flutter/material.dart';

class WellnessPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellness Plan'),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Your personalized wellness plan:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            WellnessPlanItem(text: '1. Morning meditation for 10 minutes'),
            WellnessPlanItem(text: '2. 30 minutes of physical exercise'),
            WellnessPlanItem(text: '3. Healthy breakfast with fruits'),
            WellnessPlanItem(text: '4. Midday mindfulness break'),
            WellnessPlanItem(text: '5. Gratitude journaling before bed'),
          ],
        ),
      ),
    );
  }
}

class WellnessPlanItem extends StatelessWidget {
  final String text;

  const WellnessPlanItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
