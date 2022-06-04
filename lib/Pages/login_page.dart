import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeState = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.contain,
                height: 200,
                width: 250,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          //  border: InputBorder(borderSide: BorderStyle.solid)),
                          hintText: "Enter username",
                          labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // inkwell makes container clickable, we can also use gesture detector but inkwell shows some click efffects.
                    Material(
                      color: changeState ? Colors.green : Colors.deepPurple,
                      borderRadius: changeState? BorderRadius.circular(22): BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () async {
                          setState(() {
                            changeState = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                         // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeState ? 40 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeState
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text("Login",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  )),
                          // decoration: BoxDecoration(
                          //   shape: changeState
                          //       ? BoxShape.circle
                          //       : BoxShape.rectangle,
                          //   color: changeState ? Colors.green : Colors.deepPurple,
                          //   // borderRadius: BorderRadius.circular(22)
                          // ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("Sign in"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
