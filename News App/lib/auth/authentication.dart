import 'package:firebase_auth/firebase_auth.dart';
import 'signup_authentication.dart';

class Authentication {
  FirebaseAuth _firebaseInstance = FirebaseAuth.instance;

  Future<void> signOut() async {
    return await _firebaseInstance.signOut();
  }

  Future<User?> signUpUserInFireBase(
      {required String email, required String password}) async {
    try {
      User? _user =
          await SignUpAuthService.signUp(email: email, password: password);
      return _user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<User?> signInUserInFireBase(
      {required String email, required String password}) async {
    try {
      UserCredential _userCredential = await _firebaseInstance
          .signInWithEmailAndPassword(email: email, password: password);
      return _userCredential.user;
    } catch (e) {
      print("Exception In signInFirebase from Authentication Class");
      print(e.toString());
      return null;
    }
  }
}
