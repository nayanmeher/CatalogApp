
import 'package:bloc_test1/pages/login_page.dart';
import 'package:bloc_test1/utils/myRoutes.dart';
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
    initialRoute: '/',
    routes: {
      "/":(context) => LoginPage(),
      MyRoutes.homeRoute: (context) => MyHome(),
      MyRoutes.loginRoute: (context) => LoginPage()
    },
  ));
}


