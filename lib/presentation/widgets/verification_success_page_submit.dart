import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationSuccessPageSubmit extends StatefulWidget {
  const VerificationSuccessPageSubmit({
    super.key,
    required this.deviceWidth,
    required this.onSubmit,
  });

  final Function() onSubmit;
  final double deviceWidth;

  @override
  State<VerificationSuccessPageSubmit> createState() =>
      _VerificationSuccessPageSubmitState();
}

class _VerificationSuccessPageSubmitState
    extends State<VerificationSuccessPageSubmit> {
  bool animate = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 900), () {
      setState(() {
        animate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedScale(
        scale: animate ? 1 : 0,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeOutBack, // nice pop effect
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0A7650),
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: widget.onSubmit,
            child: const Text("Let’s Warm Up"),
          ),
        ),
      ),
    );
  }
}
