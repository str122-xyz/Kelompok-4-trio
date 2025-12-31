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
      appBar: AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: []),
      ),
    );
  }
}
