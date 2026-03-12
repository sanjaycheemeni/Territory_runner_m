import 'package:flutter/material.dart';

class VerificationSuccessPageDescription extends StatelessWidget {
  const VerificationSuccessPageDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your account has been created\nsuccessfully.',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}
