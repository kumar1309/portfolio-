import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            buildPortfolioItem('Project 1', 'assets/project1.png', context),
            buildPortfolioItem('Project 2', 'assets/project2.png', context),
            buildPortfolioItem('Project 3', 'assets/project3.png', context),
            buildPortfolioItem('Project 4', 'assets/project4.png', context),
            // Add more projects here
          ],
        ),
      ),
    );
  }

  Widget buildPortfolioItem(String title, String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle project tap (e.g., show project details)
      },
      child: Card(
        elevation: 5,
        child: Column(
          children: <Widget>[
            Image.asset(imagePath, fit: BoxFit.cover, height: 100),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
