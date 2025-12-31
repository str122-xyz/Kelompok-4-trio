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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF29B6F6),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: Color(0xFF29B6F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/zeinn.jpeg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 16),

                      Expanded(
                        child: Text(
                          'Ahmad Zein Adli W.',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        'NIM: 1123150029',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Kelas: TI 23 SE 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Hobi: Gaming dan Mancing',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Tentang Saya:',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Halo! Saya Ahmad Zein Adli W., Saya Mahasiswa Global Institute Jurusan Teknik Informatika yang memiliki minat besar dalam dunia teknologi dan pemrograman. Selain itu, saya juga menikmati hobi gaming dan memancing di waktu luang saya. Saya selalu bersemangat untuk belajar hal-hal baru dan berkontribusi dalam proyek-proyek yang menantang.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
