import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_core/firebase_core.dart'; //Important
import 'package:kelompok4_app_mobile/screens/splash/splash_screen1.dart';
import 'package:kelompok4_app_mobile/screens/team/felan_profile.dart';
import 'package:kelompok4_app_mobile/screens/team/satria_profile.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

// Class buat aktifin Mouse Drag
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Project UAS Kelompok 4 Trio',
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen1(),
      routes: {
        FelanProfile.routeName: (_) => FelanProfile(),
        SatriahrlProfile.routeName: (_) => SatriahrlProfile(),
        // tambah route lu di sini
      },
    );
  }
}
