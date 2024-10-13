import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '                     I’m K Mohanakumar, a highly driven and passionate software developer who thrives on turning complex problems into elegant, innovative solutions. With a deep-rooted love for technology and a relentless curiosity to explore the latest advancements, I have honed my expertise across AI-powered applications, web development, and mobile solutions. My approach is centered on building systems that are not only efficient but also intuitive, making technology accessible to users of all levels.  ',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '                       I believe that great software should simplify life, streamline processes, and create seamless experiences, which is why I always aim to deliver solutions that exceed expectations in terms of both functionality and user experience. I am committed to pushing the boundaries of what’s possible, constantly learning, evolving, and adapting to new tools and technologies to stay ahead in the fast-paced tech landscape.',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '                       In every project I take on, I strive to balance creativity with technical excellence. My work is driven by a desire to create meaningful impact—whether I’m developing AI-driven solutions to predict and manage plant diseases, building dynamic web platforms that enhance business operations, or designing mobile apps that users love to interact with. I thrive on challenges and believe that the best solutions are those that anticipate user needs and solve problems before they arise. ',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
