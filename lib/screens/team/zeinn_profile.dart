import 'package:flutter/material.dart';

class ZeinnProfile extends StatefulWidget {
  const ZeinnProfile({super.key});

  @override
  State<ZeinnProfile> createState() => _ZeinnProfileState();
}

class _ZeinnProfileState extends State<ZeinnProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
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
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 10,
                shadowColor: Colors.black26,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
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
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF29B6F6),
                                width: 3,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/zein_profil.jpeg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Ahmad Zein Adli W.',
                                  style: TextStyle(
                                    color: Color(0xFF0277BD),
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Mobile Developer',
                                  style: TextStyle(
                                    color: Color(0xFF0277BD),
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),
                      const Divider(thickness: 1, color: Color(0xFFE0E0E0)),
                      const SizedBox(height: 24),

                      _buildInfoRow("NIM", "1123150028"),
                      const SizedBox(height: 12),
                      _buildInfoRow("Kelas", "TI 23 SE 1"),
                      const SizedBox(height: 12),
                      _buildInfoRow("Hobi", "Gaming dan Mancing"),

                      const SizedBox(height: 20),

                      const Text(
                        'Tentang Saya:',
                        style: TextStyle(
                          color: Color(0xFF29B6F6),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Halo! Saya Ahmad Zein Adli W., Saya Mahasiswa Global Institute Jurusan Teknik Informatika yang memiliki minat besar dalam dunia teknologi dan pemrograman. Selain itu, saya juga menikmati hobi gaming dan memancing di waktu luang saya.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Inter',
                          fontSize: 13,
                          height: 1.5,
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

  // fungsi untuk membangun baris informasi
  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF29B6F6),
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
          ),
        ),
        const Text(": ", style: TextStyle(color: Colors.black)),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.black87,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
