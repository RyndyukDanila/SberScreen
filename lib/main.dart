import 'package:flutter/material.dart';
import 'package:sber_screen/home_page.dart';
import 'package:sber_screen/model/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(profile: profile),
    );
  }
}
