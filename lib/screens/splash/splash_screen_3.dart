import 'package:flutter/material.dart';

class SplashEnzho extends StatefulWidget {
  const SplashEnzho({super.key});

  @override
  State<SplashEnzho> createState() => _SplashEnzhoState();
}

class _SplashEnzhoState extends State<SplashEnzho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [],
        ),
      ),
    );
  }
}