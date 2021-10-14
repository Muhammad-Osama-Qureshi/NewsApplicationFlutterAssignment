import 'package:firebase_auth/firebase_auth.dart';

class SignUpAuthService {
  /// This method is to use sign up user
  static Future<User?> signUp({final email, final password }) async {
    try {
      /// Create a new credential
      UserCredential signUpUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User _firebaseUser = signUpUser.user!;
      return _firebaseUser;
    } catch (e) {
      print("Exception  in Sign Up method in SignUpAuthService");
      print(e);
    }
  }
}
