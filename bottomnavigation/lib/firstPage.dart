// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bottomnavigation/homepage.dart';
import 'package:bottomnavigation/profilePage.dart';
import 'package:bottomnavigation/settingsPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedpages = 0;

  void navigationbottomBar(int index) {
    setState(() {
      selectedpages = index;
    });
  }

  final List Pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.green,
      ),
      body: Pages[selectedpages],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedpages,
        onTap: navigationbottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
