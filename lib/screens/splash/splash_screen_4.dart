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
            
            Center(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: const CircleBorder(),
                  /* // Todo ke splash berikutnya
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },*/
                  child: Container(
                    width: 250,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage("assets/images/logo3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
    );
  }
}