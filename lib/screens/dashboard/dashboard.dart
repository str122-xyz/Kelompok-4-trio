import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // 0: Home, 1: Team, 2: Settings
  final AuthService _authService = AuthService();
  User? currentUser = FirebaseAuth.instance.currentUser;

  // Buat akun masing"
  final Map<String, String> _memberNames = {
    'admin@test.com': 'Admin Ganteng',
    'satria@hrl.com': 'Satria Herlambang',
  };

  // Fungsi buat ngambil nama berdasarkan email yang login
  String _getDisplayName() {
    String email = currentUser?.email ?? '';
    return _memberNames[email] ?? 'Guest'; // Default jadi guest
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
