import 'package:flutter/material.dart';
import 'package:myfirstapp/firstPage.dart';
import 'package:myfirstapp/homepage.dart';
import 'package:myfirstapp/settingspage.dart';

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
        "/firstpage": (context) => FirstPage(),
        "/settingspage": (context) => SettingPage()
      },
    );
  }
}
