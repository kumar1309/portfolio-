import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Download Resume',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.download),
              label: Text('Download as PDF'),
              onPressed: () {
                // Handle resume download
              },
            ),
            SizedBox(height: 40),
            Text(
              'Summary',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              ' I have a strong background as a software developer with experience in building AI-driven solutions, dynamic web platforms, and intuitive mobile applications. My professional journey has allowed me to work on a variety of projects, from AI-powered crop disease prediction systems to web and mobile applications designed to enhance user experience and streamline business processes.',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              ' I am skilled in a range of technologies, including AI, machine learning, web development (Flask, Django, React), mobile development (Flutter), and chatbot creation. I specialize in integrating voice and image recognition, building intelligent systems, and developing interactive, user-centric applications. My focus is always on delivering high-quality, efficient solutions that are scalable and future-proof.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
