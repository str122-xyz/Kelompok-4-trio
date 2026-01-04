import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FelanProfile extends StatefulWidget {
  const FelanProfile({super.key});

  @override
  State<FelanProfile> createState() => _FelanProfileState();
}

class _FelanProfileState extends State<FelanProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF63ADF2),
      body: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 340,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Color(0xFF82A0BC), Color(0xFFA7CCED)],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/images/felan_profile.jpeg'),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Lottie.asset(
                      'assets/animations/UIUX Designer.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Felan Ardenta Yoga',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  'NIM: 1123150086\nKelas: T1-23-SH',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ]
            )
          ),
        ),
      ),
    );
  }
}
