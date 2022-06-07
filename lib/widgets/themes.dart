import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.light ,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      colorScheme: ColorScheme.light(primary :  darkBluish, secondary: Colors.black),
       //floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: darkBluish),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
         primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      colorScheme: ColorScheme.dark(primary :  lightBluishColor,secondary: Colors.white),
      
      //floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
      
      appBarTheme: AppBarTheme(
        color: Vx.gray900,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      )
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluish = Color.fromARGB(255, 12, 3, 56);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
