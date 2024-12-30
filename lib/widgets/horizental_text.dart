import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizentalText extends StatelessWidget {
   HorizentalText({required this.title,super.key});
 String title;
  @override
  Widget build(BuildContext context) {
    return                                 Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xff010104),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'see more',
          style: GoogleFonts.poppins(
            color: const Color(0xff4838D1),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    )
    ;
  }
}
