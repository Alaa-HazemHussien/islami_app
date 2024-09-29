import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.cairo(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium: GoogleFonts.cairo(fontSize: 25, fontWeight: FontWeight.bold),
        bodySmall: GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      iconTheme: IconThemeData(color: primary, size: 35, weight: 50),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primary,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white70));
  static ThemeData darkTheme = ThemeData();
}
