import 'package:flutter/material.dart';
import 'package:screens/intro_screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'school app ',
      home: screens(),
    );
  }
}
