import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '                           I’m K Mohanakumar, a dedicated software developer fueled by a passion for innovation and technology. I thrive on transforming complex challenges into powerful, user-friendly solutions that not only meet but exceed expectations. With a strong foundation in AI, web development, and mobile app creation, I design and build systems that are as intuitive as they are impactful. I love blending creativity with technical expertise to deliver solutions that stand out for their efficiency and elegance. For me, every project is an opportunity to push boundaries, learn something new, and make a lasting impact in the digital world.',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Any fool can write code that a computer can understand. Good programmers write code that humans can understand - MOHANAKUMAR K',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
