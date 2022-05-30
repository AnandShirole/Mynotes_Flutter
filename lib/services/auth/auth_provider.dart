import 'package:mynotes/services/auth/auth_user.dart';
// This Widget is modeled after the provider package but specifically for the authentication workflow.
abstract class AuthProvider {
  Future<void> initialize();
  AuthUser? get currentUser;

  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  //function to create a new user
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  //logout function
  Future<void> logOut();

  //email verification
  Future<void> sendEmailVerification();
}
