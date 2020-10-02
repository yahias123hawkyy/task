import 'package:flutter/material.dart';
import 'screens/pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewScreen(),
      debugShowCheckedModeBanner: false,
      title: " solid Solution Task",
    );
  }
}
