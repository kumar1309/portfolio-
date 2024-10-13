import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Education Timeline',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildEducationItem('10th Grade', 'Nararyana Groups of Schools', '2019 - 2022','7.8'),
            buildEducationItem('12th Grade', 'Kola Saraswathi vaishnav higher secondary school ', '2021-2022','8.9'),
            buildEducationItem('B.Tech in Computer Science', 'University Name', '2022 - 2026','9.1'),
            // Add more education items here
          ],
        ),
      ),
    );
  }

  Widget buildEducationItem(String degree, String institution, String duration, String Grade) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Icon(Icons.school, color: Colors.blueGrey),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                degree,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                institution,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              Text(
                duration,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              Text(
                Grade,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
