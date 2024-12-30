import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/my_theme_data.dart';
import 'package:flutter_quiz/widgets/feeling_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/exercise_container.dart';
import '../widgets/feature_container.dart';
import '../widgets/mental_horizental_text.dart';

class MentalHealthScreen extends StatefulWidget {
  const MentalHealthScreen({super.key});

  static const String routeName = 'MentalHealthScreen';

  @override
  State<MentalHealthScreen> createState() => _MentalHealthScreenState();
}

class _MentalHealthScreenState extends State<MentalHealthScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .082),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/logo2.png',
                ),
              ),
              Image(
                image: AssetImage(
                  'assets/images/bell-02.png',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * .082,
          vertical: size.height * .031,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello, ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: MyThemeData.purpleColor,
                        ),
                      ),
                      Text(
                        'Sara Rose',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: MyThemeData.purpleColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'How are you feeling today ?',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: MyThemeData.purpleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeelingWidget(
                        image: 'assets/images/love.png',
                        feeling: 'Love',
                      ),
                      FeelingWidget(
                        image: 'assets/images/cool.png',
                        feeling: 'Cool',
                      ),
                      FeelingWidget(
                        image: 'assets/images/happy.png',
                        feeling: 'Happy',
                      ),
                      FeelingWidget(
                        image: 'assets/images/sad.png',
                        feeling: 'Sad',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .053,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: MentalHorizontalText(
                          title: 'Feature',
                        ),
                      ),
                      const ImageIcon(
                        AssetImage(
                          'assets/images/arrow.png',
                        ),
                        color: Color(0xff027A48),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      aspectRatio: 326 / 168,
                      viewportFraction: 1,
                    ),
                    items: const [
                      FeatureContainer(),
                      FeatureContainer(),
                      FeatureContainer(),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: 3,
                      effect: const JumpingDotEffect(
                        radius: 4,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: Color(
                          0xffD9D9D9,
                        ),
                        activeDotColor: Color(
                          0xff98A2B3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .053,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: MentalHorizontalText(
                          title: 'Exercise',
                        ),
                      ),
                      const ImageIcon(
                        AssetImage(
                          'assets/images/arrow.png',
                        ),
                        color: Color(0xff027A48),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseContainer(
                        image: 'assets/images/relaxation.png',
                        exercise: 'Relaxation',
                        color: const Color(0xffF9F5FF),
                      ),
                      ExerciseContainer(
                        image: 'assets/images/meditation.png',
                        exercise: 'Meditation',
                        color: const Color(0xffFDF2FA),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseContainer(
                        image: 'assets/images/breathing.png',
                        exercise: 'Breathing',
                        color: const Color(0xffFFFAF5),
                      ),
                      ExerciseContainer(
                        image: 'assets/images/yoga.png',
                        exercise: 'Yoga',
                        color: const Color(0xffF0F9FF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xff027A48),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(
              AssetImage('assets/images/home2.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: ImageIcon(
              AssetImage('assets/images/grid.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Calendar',
            icon: ImageIcon(
              AssetImage('assets/images/calendar.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: ImageIcon(
              AssetImage('assets/images/user.png'),
            ),
          ),
        ],
      ),
    );
  }
}
