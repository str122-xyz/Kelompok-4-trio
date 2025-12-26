import 'package:flutter/material.dart';

class SplashScreenSadam extends StatefulWidget {
  const SplashScreenSadam({super.key});

  @override
  State<SplashScreenSadam> createState() => _SplashScreenSadamState();
}

class _SplashScreenSadamState extends State<SplashScreenSadam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF284B63),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            
          ],
        )),
    );
  }
}