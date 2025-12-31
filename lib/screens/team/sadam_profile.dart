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

         centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        ),
        body: Center(
        child: SingleChildScrollView(
             padding: const EdgeInsets.all(20),
            child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.white54,
              ),
              const SizedBox(height: 10),
            
               Card(
                color: Colors.white, 
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ]
            ),
            ),
            
            ),
            ] 
          ),
    ),
    ),
    );
    
  }
}