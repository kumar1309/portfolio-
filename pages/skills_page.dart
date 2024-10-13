import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            buildSkillItem('Flutter', 0.9),
            buildSkillItem('Python', 0.85),
            buildSkillItem('JAVA', 0.95),
            buildSkillItem('C', 0.8),
            buildSkillItem('JAVA SCRIPT', 0.8),
            buildSkillItem('HTML AND CSS', 0.98),
            buildSkillItem('REACT, ANGULAR and NODE', 0.75),
            buildSkillItem('MYSQL AND NOSQL', 0.8),
            // Add more skills here
          ],
        ),
      ),
    );
  }

  Widget buildSkillItem(String skill, double proficiency) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            skill,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          LinearProgressIndicator(
            value: proficiency,
            backgroundColor: Colors.grey[300],
            color: Colors.blueGrey,
            minHeight: 10,
          ),
        ],
      ),
    );
  }
}
