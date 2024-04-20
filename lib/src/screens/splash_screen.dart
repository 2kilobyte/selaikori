import 'dart:async';

import 'package:flutter/material.dart';
import 'package:selaikori/src/screens/verification/verification.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (contex) => const VerificationScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[100],
        child: const Center(
          child: Image(
            image: AssetImage('assets/selaikori.png'),
            width: 200,
          ),
        ),
      ),
    );
  }
}
