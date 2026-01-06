import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kelompok4_app_mobile/screens/auth/login_page.dart';
import 'package:kelompok4_app_mobile/screens/splash/splash_screen_2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    _checkFirstSeen();
  }

  Future<void> _checkFirstSeen() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Cek key 'seen_onboarding', defaultnya false (artinya belum pernah liat)
    bool seenOnboarding = (prefs.getBool('seen_onboarding') ?? false);

    if (seenOnboarding) {
      // Udah pernah dibuka
      // Langsung loncat ke Login
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } else {
      await prefs.setBool('seen_onboarding', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF304D6D), Color(0xFF63ADF2)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo_rispek.png"),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Think Smartly & Globally',
                  style: TextStyle(
                    fontFamily: 'MrDafoe',
                    fontSize: 25,
                    color: Color(0xFF1f3e9a),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
