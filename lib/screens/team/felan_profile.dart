import 'package:flutter/material.dart';

class FelanProfile extends StatefulWidget {
  const FelanProfile({super.key});

  @override
  State<FelanProfile> createState() => _FelanProfileState();
}

class _FelanProfileState extends State<FelanProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
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