import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpPageVerifyButton extends StatelessWidget {
  const OtpPageVerifyButton({
    super.key,
    required this.deviceWidth,
    required this.onSubmit,
  });

  final Function() onSubmit;

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: const Color(0xFF0A7650),
          foregroundColor: Colors.white,
          textStyle: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
        child: const Text("Verify"),
      ),
    );
  }
}
