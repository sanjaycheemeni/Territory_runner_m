import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:territory_runner/presentation/widgets/verification_success_page_description.dart';
import 'package:territory_runner/presentation/widgets/verification_success_page_submit.dart';
import 'package:territory_runner/presentation/widgets/verification_success_title.dart';

class VerificationSuccessPage extends StatelessWidget {
  const VerificationSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            children: [
              SizedBox(width: double.maxFinite),

              Spacer(),

              SvgPicture.asset(width: 300, 'assets/images/verified.svg'),

              SizedBox(height: 40),

              VerificationSuccessTitle(),

              SizedBox(height: 15),

              VerificationSuccessPageDescription(),

              Spacer(),

              VerificationSuccessPageSubmit(
                deviceWidth: deviceWidth,
                onSubmit: () {},
              ),

              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
