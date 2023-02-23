import 'package:flutter/material.dart';
import 'package:safer/backend/emergency.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/backend/emergency.dart';

void main() {
  contact1.loadDataFromFile();
  contact2.loadDataFromFile();
  contact3.loadDataFromFile();
  contact4.loadDataFromFile();
  police.loadDataFromFile();
  firedepartment.loadDataFromFile();
  ambulance.loadDataFromFile();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
