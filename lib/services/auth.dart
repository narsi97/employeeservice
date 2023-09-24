// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:indemandcaredemo/models/user_profile.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserProfile? _userFromFirebaseUser(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? UserProfile(uid: user.uid) : null ;
  }

  Future signInAnonomous() async {
    try {
      final UserCredential userCredential= await _auth.signInAnonymously();
      return userCredential;
    } catch (e){
       print(e.toString()); 
       return null;
    }
  }

  Future signInEmail() async {

  }

  // Sign In Anonomous

  // Sign In With Email

  // Sign Out

}