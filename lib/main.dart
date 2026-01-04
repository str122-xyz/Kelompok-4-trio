import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; //Important
import 'package:kelompok4_app_mobile/screens/splash/splash_screen1.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
