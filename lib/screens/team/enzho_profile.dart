import 'package:flutter/material.dart';

class EnzhoProfile extends StatefulWidget {
  const EnzhoProfile({super.key});

  @override
  State<EnzhoProfile> createState() => _EnzhoProfileState();
}

class _EnzhoProfileState extends State<EnzhoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xff284B63),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xffFFFFFF),
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
            color: const Color(0xff284B63),
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
                          'assets/images/enzho_profile.jpg', 
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Mohamad Enzho Yuliawan',
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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

                  SizedBox(height: 8),
        
                  Text(
                    'Kelas: TI 23 SE 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),

                  SizedBox(height: 8),
        
                  Text(
                    'Keahlian: Futsal & Basic Programming',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),

                  SizedBox(height: 8),
        
                  Text(
                    'Tentang Saya:',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),
        
                  Text(
                    'Hi, Nama Saya Mohamad Enzho Yuliawan. Saya Mahasiswa Global Institute mengambil jurusan Teknik Informatika dengan konsentrasi Software Engineering. fokus saya saat ini adalah kuliah dan futsal',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
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
