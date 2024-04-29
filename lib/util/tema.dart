import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData temaPadrao() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 106, 0, 155),
      background: const Color.fromARGB(255, 249, 212, 237),
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.bitter(
        fontSize: 12,
      ),
      bodyLarge: GoogleFonts.bitter(
        fontSize: 14,
      ),
      bodySmall: GoogleFonts.bitter(
        fontSize: 16,
      ),
      headlineMedium: GoogleFonts.bitter(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.bitter(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
