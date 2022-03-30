
import 'package:bloc_test1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/my_home.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.light,
    darkTheme: ThemeData(
      brightness: Brightness.dark
    ),
    theme: ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.deepPurple
    ),
    //initialRoute: '/home',
    routes: {
      "/":(context) => LoginPage(),
      "/home": (context) => MyHome(),
      "/login": (context) => LoginPage()
    },
  ));
}


