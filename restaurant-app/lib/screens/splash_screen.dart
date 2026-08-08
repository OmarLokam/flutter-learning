import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFD4A373), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 100,
              color: Color(0xFF5E4B3E),
            ),
            SizedBox(height: 20),
            Text(
              'TasteBite',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5E4B3E),
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 30),
            
            CircularProgressIndicator(
              color: Color(0xFF5E4B3E),
            ),
          ],
        ),
      ),
    );
  }
}