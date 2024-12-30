import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .22,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(
          0xffECFDF3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xff344054),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Boost your mood with positive vibes',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        'assets/images/play.png',
                      ),
                      color: Color(0xff32D583),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '10 mins',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: Image(
              image: AssetImage(
                'assets/images/feature_image.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
