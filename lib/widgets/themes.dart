import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static ThemeData themeData(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme
      )
  );

  static ThemeData darkThemeData (BuildContext context) => ThemeData(
      brightness: Brightness.dark
  );

  static Color grey = Color(0xfff2f2f2);
  static Color black = Colors.black87;
}