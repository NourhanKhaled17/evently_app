
import 'package:evently_app/theme/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends BaseTheme{
  @override
  Color get backgroundColor => Color(0xFFF2FEFF);

  @override
  Color get primaryColor => Color(0xFF5669FF);

  @override
  Color get textColor => Color(0xFF1C1C1C);

  @override
  ThemeData get themeData => ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: backgroundColor
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textColor
      ),
      titleMedium: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: primaryColor
      ),
      titleLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: primaryColor
      ),
    )
  );
}