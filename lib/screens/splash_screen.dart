// lib/screens/splash_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // HomeScreen 경로가 맞는지 확인하세요.

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 3초 후에 HomeScreen으로 전환합니다.
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'lib/assets/splash.jpeg',
          fit: BoxFit.contain, // BoxFit.contain으로 원본 비율 유지
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
