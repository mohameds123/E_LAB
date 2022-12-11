// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [SizedBox(width: double.infinity,),
              Center(
                child: SizedBox(width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(30),
                          child:
                          Text("Welcome To App", style: TextStyle(fontSize: 33, fontFamily: "myfont",color: Color(0xff6DADB1) ),),),
                      SvgPicture.asset(
                        "assets/icons/chat.svg",
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/loginIn");
                        },

                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xff6DADB1)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 77, vertical: 10)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 24,fontFamily: "myfont"),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signUp");
                        },

                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xff6DADB1)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 24, color: Colors.white,fontFamily: "myfont"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                width: 150,
                top: 0,
                left: 0,
                child: Image.asset("assets/images/signup_top.png",width: 280,),
              ),
              Positioned(
                width: 90,
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png"),
              ),
              Positioned(
                width: 90,
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png"),
              ),
              Positioned(
                width: 90,
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
