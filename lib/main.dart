import 'package:flutter/material.dart';
import 'package:glocapp/constants.dart';
import 'package:glocapp/pages/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glocapp     ',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigation(),
    );
  }
}
