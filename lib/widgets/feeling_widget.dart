import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeelingWidget extends StatelessWidget {
  const FeelingWidget({super.key, required this.image, required this.feeling});

  final String image;
  final String feeling;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: size.height * .079,
          width: size.width * .15,
          decoration: BoxDecoration(
            color: const Color(0xffE4E7EC),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          feeling,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
