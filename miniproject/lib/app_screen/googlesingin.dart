

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //logout
  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Error signout");
    }
  }
}
