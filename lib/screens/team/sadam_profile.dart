import 'package:flutter/material.dart';

class SadamProfile extends StatefulWidget {
  const SadamProfile({super.key});

  @override
  State<SadamProfile> createState() => _SadamProfileState();
}

class _SadamProfileState extends State<SadamProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff284B63),
    
    appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter', 
            fontWeight: FontWeight.bold,
          ),
        ),
    ),
    );
  }
}