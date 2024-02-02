import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/home-screen.dart';
import 'package:shopping_app/Screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
        (){
      Navigator.push(context, MaterialPageRoute(builder: (ctx)=> OnboardingScreen()));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/image2.jpg",),
          fit: BoxFit.cover,
          opacity: 0.8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,
            size: 250,
            color: Color.fromARGB(255, 238, 80, 80),),
            Text("DP SHOP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 40,
              fontStyle: FontStyle.italic
            ),)
          ],
        )
      ),
    );
  }
}
