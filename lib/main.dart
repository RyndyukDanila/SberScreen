import 'package:flutter/material.dart';
import 'package:sber_screen/home_screen.dart';
import 'package:sber_screen/model/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final Profile profile = const Profile(
    name: 'Екатерина',
    image: 'assets/images/user_image.png',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(profile: profile),
    );
  }
}
