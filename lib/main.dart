import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:territory_runner/presentation/pages/dashboard_screen.dart';
import 'package:territory_runner/presentation/pages/login_page.dart';
import 'package:territory_runner/presentation/pages/otp_verification_page.dart';
import 'package:territory_runner/presentation/pages/verification_success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
        // brightness: Brightness.dark,
        primaryColor: Colors.white,
      ),
      themeMode: ThemeMode.dark,
      home: const DashboardScreen(),
    );
  }
}
