import 'package:flutter/material.dart';

class SatriahrlProfile extends StatefulWidget {
  const SatriahrlProfile({super.key});

  @override
  State<SatriahrlProfile> createState() => _SatriahrlProfileState();
}

class _SatriahrlProfileState extends State<SatriahrlProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(color: Colors.black, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF1744), // Red Accent (Aka)
              Color(0xFF2962FF), // Blue Accent (Ao)
            ],
            stops: [0.2, 0.9],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(padding: const EdgeInsets.all(20)),
          ),
        ),
      ),
    );
  }
}
