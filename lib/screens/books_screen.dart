import 'package:flutter/material.dart';
import 'package:flutter_quiz/my_theme_data.dart';
import 'package:flutter_quiz/widgets/horizental_text.dart';
import 'package:flutter_quiz/widgets/tab_widget.dart';
import '../widgets/best_seller_item.dart';

class BooksScreen extends StatefulWidget {
  static const String routeName = 'BooksScreen';

  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor:MyThemeData.primaryColor,
          unselectedItemColor:MyThemeData.greyColor,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(
              () {},
            );
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: ImageIcon(
                AssetImage('assets/images/home.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: ImageIcon(
                AssetImage('assets/images/Search.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Library',
              icon: ImageIcon(
                AssetImage('assets/images/Document.png'),
              ),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/Logo.png',
                  ),
                ),
                Image(
                  image: AssetImage(
                    'assets/images/Setting.png',
                  ),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  children: [
                    HorizontalText(
                      title: 'Categories',
                    ),
                    const SizedBox(height: 16),
                    TabBar(
                      dividerColor: Colors.transparent,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: TabWidget(text: 'Art'),
                        ),
                        Tab(
                          child: TabWidget(text: 'Business'),
                        ),
                        Tab(
                          child: TabWidget(text: 'Comedy'),
                        ),
                        Tab(
                          child: TabWidget(text: 'Drama'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .042,
                    ),
                    SizedBox(
                      height: size.height * 0.6, // Adjust this value as needed
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HorizontalText(
                                  title: 'Recommended for you',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  height: size.height * .396,
                                  width: double.infinity,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        width: size.width * .512,
                                        child: const Image(
                                          image: AssetImage(
                                            'assets/images/category_image.png',
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(
                                        width: 12,
                                      );
                                    },
                                    itemCount: 2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                HorizontalText(
                                  title: 'Best seller',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  height: size.height * .19,
                                  child: ListView.separated(
                                    // scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return const BestSellerItem();
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(
                                        width: 12,
                                      );
                                    },
                                    itemCount: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Center(
                            child: Text('Business Content'),
                          ),
                          const Center(
                            child: Text('Comedy Content'),
                          ),
                          const Center(
                            child: Text('Drama Content'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
