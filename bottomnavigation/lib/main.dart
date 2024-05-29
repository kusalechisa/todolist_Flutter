import 'package:bottomnavigation/firstPage.dart';
import 'package:bottomnavigation/homepage.dart';
import 'package:bottomnavigation/profilePage.dart';
import 'package:bottomnavigation/settingsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  void tapped() {
    print("You tapped Me !");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/homepage": (context) => HomePage(),
        "/settingspage": (context) => SettingsPage(),
        "/profilepage": (context) => ProfilePage()
      },
    );
  }
}
