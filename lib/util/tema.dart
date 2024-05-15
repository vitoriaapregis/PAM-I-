import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData temaPadrao() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 149, 255, 250),
        brightness: Brightness.light),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ), //PREÇO
      bodyLarge: GoogleFonts.adamina(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ), //QUAL FRUTA
      bodySmall: GoogleFonts.archivo(
        fontSize: 12,
      ), //FRUTA
      headlineMedium: GoogleFonts.amita(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ), //ESSE AINDA NN SEI
      titleLarge: GoogleFonts.amita(
        fontWeight: FontWeight.w700,
      ), //TITULO
      titleMedium: GoogleFonts.amita(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
