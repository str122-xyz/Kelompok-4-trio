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