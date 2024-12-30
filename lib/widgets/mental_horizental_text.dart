import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MentalHorizontalText extends StatelessWidget {
  MentalHorizontalText({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'see more',
          style: GoogleFonts.poppins(
            color: const Color(0xff027A48),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
    ;
  }
}
