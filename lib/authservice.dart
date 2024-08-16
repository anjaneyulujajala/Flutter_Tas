import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw Exception('Wrong password provided for that user.');
      } else {
        print('FirebaseAuthException: ${e.code}');
        throw Exception(e.message);
      }
    } catch (e) {
      print('Exception: $e');
      throw Exception('Failed to sign in');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Failed to sign out: $e');
      throw Exception('Failed to sign out');
    }
  }

  Future<User?> register(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('An account already exists for that email.');
        throw Exception('An account already exists for that email.');
      } else {
        print('FirebaseAuthException: ${e.code}');
        throw Exception(e.message);
      }
    } catch (e) {
      print('Exception: $e');
      throw Exception('Failed to register');
    }
  }

  // Check if user is signed in
  User? get currentUser {
    return _auth.currentUser;
  }
}
