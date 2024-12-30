import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xff4838D1);
  static const Color blackColor = Color(0xFF010104);
  static const Color greyColor = Color(0xff6A6A8B);
  static const Color purpleColor = Color(0xff371B34);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.aBeeZee(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),
      titleMedium: GoogleFonts.aBeeZee(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      titleLarge: GoogleFonts.aBeeZee(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodySmall: GoogleFonts.exo2(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),
      bodyMedium: GoogleFonts.exo2(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: GoogleFonts.exo2(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
