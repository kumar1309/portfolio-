import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Contact Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '  "Let’s create something extraordinary together. Reach out and let’s turn your vision into reality!"    ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            buildContactItem(Icons.location_on, 'Address', '123, arcot road , kodambakkam , chennai 12'),
            buildContactItem(Icons.phone, 'Phone', '+91 6369095933'),
            buildContactItem(Icons.email, 'Email', 'kmohankumar1309@gmail.com'),
            // Add more contact methods here
          ],
        ),
      ),
    );
  }

  Widget buildContactItem(IconData icon, String method, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.blueGrey),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                method,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                detail,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
