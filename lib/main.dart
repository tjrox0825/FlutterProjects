import 'package:day2/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:day2/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:day2/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.blue, 
            fontFamily: GoogleFonts.lato().fontFamily,
            ),
            debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        //initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
