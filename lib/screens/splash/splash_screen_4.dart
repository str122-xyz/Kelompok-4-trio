import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/screens/auth/login_page.dart';
import 'package:kelompok4_app_mobile/screens/dashboard/dashboard.dart';
import 'package:kelompok4_app_mobile/screens/team/felan_profile.dart';

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
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),

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
                        builder: (context) => const FelanProfile(),
                      ),
                    );
                  },
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

            const SizedBox(height: 30),

            const Text(
              "Ingpo Kampus",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Tercepat",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
                color: Color(0xFFD9D9D9),
              ),
            ),

            const Spacer(),
            //bullet indikator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: false), //nonaktif
                const SizedBox(width: 10),
                _buildDot(isActive: false), //nonaktif
                const SizedBox(width: 10),
                _buildDot(isActive: true), //aktif
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 12 : 10,
      height: isActive ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : const Color(0xFFD9D9D9),
      ),
    );
  }
}
