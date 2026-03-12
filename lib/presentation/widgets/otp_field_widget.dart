import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key, required this.onSubmit});

  final Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      onCompleted: (submittedOtp) {},
      length: 6,
      mainAxisAlignment: .spaceEvenly,
      submittedPinTheme: PinTheme(
        width: 46,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF0A7650), width: 2),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFD9D9D9).withOpacity(.2),
        ),
      ),
      defaultPinTheme: PinTheme(
        width: 46,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFD9D9D9).withOpacity(.2),
        ),
      ),
    );
  }
}
