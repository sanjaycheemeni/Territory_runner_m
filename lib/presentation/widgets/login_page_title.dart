import 'package:flutter/material.dart';

class LoginPageTitle extends StatelessWidget {
  const LoginPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter Mobile Number',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
    );
  }
}
