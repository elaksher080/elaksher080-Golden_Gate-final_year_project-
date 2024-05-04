import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xff090c9b),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xff090c9b),
      seedColor: const Color(0xff090c9b),
      onSecondary: Colors.white,
      onPrimary: const Color(0xff090c9b),
      onBackground: const Color(0xFFF8F8F8),
    ),
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedIconTheme: IconThemeData(
        color: Colors.blueAccent,
        size: 32,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 28,
      ),
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    dividerColor: const Color(0xFF101938),
  );
/////////////////////////////////////////////////////////////////////////////////////////

/*
  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFF141A2E),
      seedColor: const Color(0xFF141A2E),
      onSecondary: const Color(0xFFFACC1D),
      onPrimary: const Color(0xFFFACC1D),
      onBackground: const Color(0xFF141A2E),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 32,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    dividerColor: const Color(0xFFFACC1D),
  );
*/

////////////////////////////////////////////////////////////////////////////////////////////
}
