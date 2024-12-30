import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseContainer extends StatelessWidget {
  ExerciseContainer({
    required this.image,
    required this.exercise,
    required this.color,
    super.key,
  });

  String image;
  Color color;
  String exercise;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .387,
      height: size.height * .074,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              image,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            exercise,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
