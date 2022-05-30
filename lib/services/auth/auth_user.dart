// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String id;
  final String? email;
  final bool isEmailVerified;
  const AuthUser({required this.email,required this.isEmailVerified,required this.id});

  factory AuthUser.fromFirebase(User user) => AuthUser(
        id: user.uid,
        email: user.email!,
        isEmailVerified: user.emailVerified,
      );

  // void testing() {
  //   AuthUser(isEmailVerified: true);
  // }
}

// class MyAuthUser extends AuthUser {
//   bool isbla = false;
//   MyAuthUser(bool isEmailVerified) : super(isEmailVerified);
// }
