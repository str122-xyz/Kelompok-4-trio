import 'package:flutter/material.dart';

class SplashSatria extends StatelessWidget {
  const SplashSatria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF353535),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            Center(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: const CircleBorder(),
                  /*//Todo ke splash berikutnya
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Splash(ganti nama)()),
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
                        image: AssetImage("assets/images/logo1.png"),
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
              "Terupdate & Terkini",
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
