import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final int days = 13;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Material(
        child: Center(
          child: Container(
      child: Text("Hi welcome to the $days days of flutter"),
    ),
        )
      )
    );
  }
}