import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Jadwal Kuliah",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildJadwalCard(
            "Selasa",
            "08:00 - 09:30",
            "ERP",
            "2",
            "R.404",
            "Dr. Moh. Ramaddan Julianti, MT",
          ),
          _buildJadwalCard(
            "Selasa",
            "10:00 - 11:45",
            "Technopreneurship",
            "2",
            "R.404",
            "Ade Supriyatna, M.M",
          ),
          _buildJadwalCard(
            "Rabu",
            "08:00 - 10:30",
            "IT Governance",
            "3",
            "R.505",
            "Muchamad Iqbal, S.E, M.Kom",
          ),
          _buildJadwalCard(
            "Rabu",
            "10:40 - 13:00",
            "System Pakar",
            "3",
            "R.505",
            "Dr. Moh. Ramaddan Julianti, MT",
          ),
          _buildJadwalCard(
            "Rabu",
            "13:30 - 15:00",
            "AI",
            "3",
            "R.505",
            "Dr. Moh. Ramaddan Julianti, MT",
          ),
          _buildJadwalCard(
            "Kamis",
            "10:40 - 13:10",
            "RPL",
            "3",
            "R.301",
            "Rizki Adha, M.Kom",
          ),
          _buildJadwalCard(
            "Jumat",
            "10:40 - 13:10",
            "Mobile Apps",
            "3",
            "R.Lab",
            "I Ketut Gunawan, S.Kom, MTI",
          ),
        ],
      ),
    );
  }

  // Jadwal Card
  Widget _buildJadwalCard(
    String hari,
    String jam,
    String matkul,
    String sks,
    String ruang,
    String dosen,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    matkul,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF304D6D),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF63ADF2).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "$sks SKS",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF304D6D),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
