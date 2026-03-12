import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:territory_runner/presentation/widgets/otp_field_widget.dart';
import 'package:territory_runner/presentation/widgets/otp_page_description.dart';
import 'package:territory_runner/presentation/widgets/otp_page_title.dart';
import 'package:territory_runner/presentation/widgets/otp_page_verify_button.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // Appbar
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),

      // body
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              // Title
              OtpPageTitle(),

              // Slight gap
              SizedBox(height: 10),

              // Descripton
              OtpPageDescription(phoneNo: '9495273251'),

              // Slight Gap
              SizedBox(height: 35),

              // Pinput - OTP Field
              OtpField(onSubmit: (otp) {}),

              // slight  gap
              SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Didn’t receive code? ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: "Resend",
                        style: TextStyle(
                          color: const Color(0xFF0A7650),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF0A7650),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Resend clicked");
                          },
                      ),
                    ],
                  ),
                ),
              ),

              // Spacer
              Spacer(),

              // Otp verify button
              OtpPageVerifyButton(deviceWidth: deviceWidth, onSubmit: () {}),

              // Extra pad
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
