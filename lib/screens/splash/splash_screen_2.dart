import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/screens/splash/splash_screen_3.dart';

class SplashZeinn extends StatelessWidget {
  const SplashZeinn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7CCED),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            Center(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashEnzho(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
