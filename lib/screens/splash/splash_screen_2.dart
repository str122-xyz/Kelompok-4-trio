import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/screens/splash/splash_screen_3.dart';

class SplashZeinn extends StatelessWidget {
  const SplashZeinn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF29B6F6), Color(0xFF0277BD)],
          ),
        ),
        child: SafeArea(
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
                    child: Container(
                      width: 250,
                      height: 250,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 30,
                            spreadRadius: 2,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/logo4.png"),
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
                "Terupdate",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),

              const Spacer(),
              //Indikator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(isActive: true), //aktif
                  const SizedBox(width: 10),
                  _buildDot(isActive: false), //nonaktif
                  const SizedBox(width: 10),
                  _buildDot(isActive: false), //nonaktif
                ],
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  //fungsi indikator
  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 12 : 10,
      height: isActive ? 12 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        shape: BoxShape.circle,
      ),
    );
  }
}
