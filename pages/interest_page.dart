import 'package:flutter/material.dart';

class InterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Interests',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildInterestItem(Icons.code, 'Coding'),
            buildInterestItem(Icons.music_note, 'Music'),
            buildInterestItem(Icons.camera_alt, 'Photography'),
            buildInterestItem(Icons.book, 'Reading'),
            buildInterestItem(Icons.book, 'Software Architecture'),
            buildInterestItem(Icons.book, 'User Experience (UX) and Design'),
            buildInterestItem(Icons.book, 'Continuous Learning'),
            buildInterestItem(Icons.book, 'Artificial intelegence'),
            buildInterestItem(Icons.book, 'Machine learning '),
            // Add more interests here
          ],
        ),
      ),
    );
  }

  Widget buildInterestItem(IconData icon, String interest) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.blueGrey),
          SizedBox(width: 10),
          Text(
            interest,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
