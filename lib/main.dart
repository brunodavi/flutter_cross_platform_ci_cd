import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 56, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 48, color: Colors.black),
        ),
      ),
      home: HomePage(),
    );
  }
}

