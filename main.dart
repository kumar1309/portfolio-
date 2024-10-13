import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/education_page.dart';
import 'pages/home_page.dart';
import 'pages/interest_page.dart';
import 'pages/portfolio_page.dart';
import 'pages/resume_page.dart';
import 'pages/skills_page.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      drawer: PortfolioDrawer(),
      body: HomePage(), // Default to the Home page
    );
  }
}

class PortfolioDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('MOHANAKUMAR K'),
            accountEmail: Text('kmohankumar1309@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          buildDrawerItem(Icons.home, 'Home', context, HomePage()),
          buildDrawerItem(Icons.person, 'About', context, AboutPage()),
          buildDrawerItem(Icons.picture_as_pdf, 'Resume', context, ResumePage()),
          buildDrawerItem(Icons.star, 'Skills', context, SkillsPage()),
          buildDrawerItem(Icons.work, 'Portfolio', context, PortfolioPage()),
          buildDrawerItem(Icons.school, 'Education', context, EducationPage()),
          buildDrawerItem(Icons.favorite, 'Interest', context, InterestPage()),
          buildDrawerItem(Icons.contact_mail, 'Contact', context, ContactPage()),
        ],
      ),
    );
  }

  ListTile buildDrawerItem(IconData icon, String title, BuildContext context, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(title, style: TextStyle(fontSize: 18)),
      onTap: () {
        Navigator.pop(context); // Close the drawer
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
