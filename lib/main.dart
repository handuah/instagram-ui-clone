import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(InstagramApp());

class InstagramApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(      
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

