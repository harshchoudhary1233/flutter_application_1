import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/cart_page.dart';
import 'package:flutter_application_1/Pages/home_detail_page.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/", // ye ni likhta  to "/" ye jis page k samne hota h vo page se app start hota
      routes: {
        "/" :(context) => Homepage(),
        MyRoutes.homeRoute:(context) => Homepage() ,// "/"" is used to set homepage as initial page, isme loading wala button kse lgate h vo v bta rkha h by using circular progress indicator
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage(),
        

      },
      
    );
  }
}
// dart data class generator ko shi se use krna sikhna ho to 04:37:00
