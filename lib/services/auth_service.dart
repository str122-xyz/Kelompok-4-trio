import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Fungsi Login
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "Terjadi kesalahan saat login";
    } catch (e) {
      throw "Gagal login: $e";
    }
  }

  // Fungsi Logout
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
