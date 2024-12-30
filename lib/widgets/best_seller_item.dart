import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../my_theme_data.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(12),
        color: const Color(0xffF5F5FA),
      ),
      width: size.width * .8,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/container_image2.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            width: size.width * .3,
            height: size.width * .3,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                'Light Mage',
                style: GoogleFonts.poppins(
                  color:
                  MyThemeData.blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Laurie Forest',
                style: GoogleFonts.poppins(
                  color:
                  MyThemeData.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      'assets/images/star-filled.png',
                    ),
                    color: Color(0xffF77A55),
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/images/star-filled.png',
                    ),
                    color: Color(0xffF77A55),
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/images/star-filled.png',
                    ),
                    color: Color(0xffF77A55),
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/images/star-filled.png',
                    ),
                    color: Color(0xffF77A55),
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/images/star-outlined.png',
                    ),
                    color: Color(0xffF77A55),
                  ),
                ],
              ),
              Text('1,000+ Listeners',
                style: GoogleFonts.poppins(
                    fontSize:12,
                    color: MyThemeData.greyColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
