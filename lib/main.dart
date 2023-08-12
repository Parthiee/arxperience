import 'package:arxperience/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme:ThemeData(fontFamily: "WorkSans"),
        home: LoginPage()
            );
  }
}