

import 'package:bloc_test1/pages/login_page.dart';
import 'package:bloc_test1/utils/myRoutes.dart';
import 'package:bloc_test1/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/my_home.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: MyThemeData.darkThemeData(context),
      theme: MyThemeData.themeData(context),
      initialRoute: '/home',
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute: (context) => MyHome(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}


