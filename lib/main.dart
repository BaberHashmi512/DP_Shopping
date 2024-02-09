import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navigation_screen.dart';
import 'package:shopping_app/Screens/onboarding_screen.dart';
import 'package:shopping_app/Screens/splash_screen.dart';

import 'Screens/login-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping ',
      theme: ThemeData(
        primaryColor: Color(0XFFDB3022),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
