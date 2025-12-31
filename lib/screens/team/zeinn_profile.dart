import 'package:flutter/material.dart';

class ZeinnProfile extends StatefulWidget {
  const ZeinnProfile({super.key});

  @override
  State<ZeinnProfile> createState() => _ZeinnProfileState();
}

class _ZeinnProfileState extends State<ZeinnProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF29B6F6),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
