import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthService _authService = AuthService(); // auth service
  bool _isLoading = false;

  void _handleLogin() async {
    //validasi input kosong
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email dan password ga boleh kosong!")),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      // Proses login ke firebase
      await _authService.signIn(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Gagal: $e"), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), actions: const []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: []),
      ),
    );
  }
}
