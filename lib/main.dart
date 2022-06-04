import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   
  // num data  type can store both int and double. use var for variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home : Homepage(), app start hone p agr homepage khulna chie to ya to home : Homepage() esa likh do ya for line 25 m jsa likha h vsa dono m se koi ek
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      initialRoute: "/", // ye ni likhta  to "/" ye jis page k samne hota h vo page se app start hota
      routes: {
        "/" :(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => Homepage() ,// "/"" is used to set homepage as initial page
        MyRoutes.loginRoute:(context) => LoginPage()
      },
      
    );
  }
}

