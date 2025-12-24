import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/screens/splash/splash_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project UAS Kelompok 4 Trio',
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen1(),
    );
  }
}
