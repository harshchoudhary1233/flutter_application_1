import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  num days = 13;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Flutter world"),
        ),
        body: Center(
          child: Container(
      child: Text("Hi welcome to the $days days of flutter"),
    ),
        ),
        drawer: Drawer(),
      );
  }
}