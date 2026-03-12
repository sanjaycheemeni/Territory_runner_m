import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:territory_runner/presentation/widgets/login_page_description.dart';
import 'package:territory_runner/presentation/widgets/login_page_title.dart';
import 'package:territory_runner/presentation/widgets/phone_number_widget.dart';
import 'package:territory_runner/presentation/widgets/send_access_code_button.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    // Device screen dimensions...
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // App bar for back button (only)
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              LoginPageTitle(),

              // slight gap
              SizedBox(height: 5),

              // Description
              LoginPageDescription(),

              // Slight gap
              SizedBox(height: 35),

              // textbox for phone no.
              PhoneNumberWidget(
                controller: TextEditingController(),
                errorText: '',
              ),

              // Spacer
              Spacer(),

              // Submit Button
              SendAccessCodeButton(deviceWidth: deviceWidth, onSubmit: () {}),

              // Extra pad
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
