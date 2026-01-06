import 'dart:math';

import 'package:flutter/material.dart';

class JadwalUasPage extends StatelessWidget {
  const JadwalUasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cetak Kartu Ujian",
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Silakan lengkapi data berikut:",
              style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Dropdown Tipe Ujian
            const Text(
              "Tipe Ujian",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              hint: const Text("Pilih Tipe Ujian"),
              items: [
                "Ujian Tengah Semester (UTS)",
                "Ujian Akhir Semester (UAS)",
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {},
            ),

            const SizedBox(height: 20),

            // Dropdown tahun
            const Text(
              "Tahun Akademik",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              hint: const Text("Pilih Tahun"),
              items: [
                "2024/2025 Ganjil",
                "2025/2026 Genap",
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {},
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
