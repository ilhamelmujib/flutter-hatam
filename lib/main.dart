import 'package:all_new_hatam/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hatam",
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }

}
