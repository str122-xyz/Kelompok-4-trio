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
              Color(0xFF880E4F), // Maroon keunguan
              Color(0xFF1A237E), // Navy pekat
            ],
            stops: [0.2, 0.9],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),

              child: Card(
                elevation: 20,
                shadowColor: Colors.purple.withOpacity(0.6),
                color: const Color(0xFF4A148C).withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.white.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                colors: [Colors.purple, Colors.deepPurple],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple.withOpacity(0.5),
                                  blurRadius: 15,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/satriaa.jpeg',
                                width: 85,
                                height: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Satria Herlambang',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),
                      // Line pemisah
                      Divider(
                        thickness: 1,
                        color: Colors.purple[100]?.withOpacity(0.2),
                      ),
                      const SizedBox(height: 24),

                      _buildInfoRow("NIM", "1123150070"),
                      const SizedBox(height: 12),
                      _buildInfoRow("Kelas", "TI 23 SE 1"),
                      const SizedBox(height: 12),
                      _buildInfoRow(
                        "Keahlian",
                        "Flutter, Laravel, dart, PHP, JavaScript, C++",
                      ),

                      const SizedBox(height: 24),

                      const Text(
                        'Tentang Saya:',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          shadows: [
                            Shadow(color: Colors.purple, blurRadius: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Hola! Saya Satria Herlambang, Saya Mahasiswa Global Institute Jurusan Teknik Informatika yang memiliki minat dan kemampuan dalam berbagai bahasa pemograman, saya juga selalu bersemangat mempelajari hal-hal baru guna meningkatkan kualitas kerja dan kontribusi di industri teknologi.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Inter',
                          fontSize: 13,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi Widget helper custom
  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple[200],
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
          ),
        ),
        const Text(": ", style: TextStyle(color: Colors.white54)),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
