import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF0F1424);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primary,
          onPrimary: Colors.black,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.cairo(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
        bodyMedium:
            GoogleFonts.cairo(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
        bodySmall: GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: primary, size: 35, weight: 50),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primary,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white70));
  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: yellowColor,
          )),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.cairo(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
        bodyMedium:
            GoogleFonts.cairo(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
        bodySmall: GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: primary, size: 35, weight: 50),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkPrimary,
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.white70));
}
