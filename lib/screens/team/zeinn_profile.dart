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
      appBar: AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: []),
      ),
    );
  }
}
