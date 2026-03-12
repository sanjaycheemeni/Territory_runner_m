import 'package:flutter/material.dart';

class OtpPageDescription extends StatelessWidget {
  const OtpPageDescription({super.key, required this.phoneNo});

  final String phoneNo;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter the verification code we just sent to your phone \nnumber +91 $phoneNo',
    );
  }
}
