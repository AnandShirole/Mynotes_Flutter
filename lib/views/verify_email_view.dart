import 'package:flutter/material.dart';
import 'package:mynotes/Routes/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text(
            "we've sent you an email to verify your email address",
          ),
          const Text(
            "please check your email and if you didn't get the email please click the button below",
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text(
              "Send verification email",
            ),
          ),
          TextButton(
            onPressed: () async {
              AuthService.firebase().logOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute, (Route<dynamic> route) => false);
            },
            child: const Text(
              "Go back",
            ),
          ),
        ],
      ),
    );
  }
}
