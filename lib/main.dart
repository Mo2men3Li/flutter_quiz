import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/books_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xff4838D1),
          unselectedItemColor: Color(0xff6A6A8B)
        )
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        BooksScreen.routeName:(context)=> const BooksScreen(),
      },
      initialRoute: 'BooksScreen',
    );
  }
}

