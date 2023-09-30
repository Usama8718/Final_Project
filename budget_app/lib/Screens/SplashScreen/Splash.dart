import 'dart:async';

import 'package:budget_app/Screens/HomePage/HomeScreen.dart';
import 'package:flutter/material.dart';
// import 'package:walletpay/Screens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 10),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(214, 245, 243, 243),
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        "assets/Splash_Logo.png",
      ),
    );
  }
}
