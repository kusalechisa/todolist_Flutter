import 'package:flutter/material.dart';
import 'package:todoapp/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  var box= await Hive.openBox("My Box");
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepages(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
