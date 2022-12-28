import 'package:flutter/material.dart';
import 'package:qrsound/screens/anaSayfa.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anaSayfa(),
    );
  }
}
