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
    );
  }
}
