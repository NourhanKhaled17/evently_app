
import 'package:evently_app/theme/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme extends BaseTheme{
  @override
  Color get backgroundColor => Color(0xFF101127);

  @override
  Color get primaryColor => Color(0xFF5669FF);

  @override
  Color get textColor => Color(0xFFF4EBDC);

  @override
  ThemeData get themeData => ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: backgroundColor
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundColor,
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