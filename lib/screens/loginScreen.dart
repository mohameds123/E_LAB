// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 140),
              Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'myfont',
                    fontSize: 50,
                    color: Color(0xff6DADB1)),

              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Please enter your email and your password",
                  style: TextStyle(fontSize: 15, color: Color(0xff6DADB1)),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 380,
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Email",
                      labelStyle: TextStyle(color: Color(0xff6DADB1)),
                      border: InputBorder.none),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 19),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 380,
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      labelStyle: TextStyle(color: Color(0xff6DADB1)),
                      border: InputBorder.none),
                ),
              ),
              // TextFormField(),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff6DADB1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 135, vertical: 12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(width: 330,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff6DADB1)),
                  borderRadius: BorderRadius.circular(12),),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 12, vertical: 15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/google.svg",
                        height: 27,
                      ),
                      Text(
                        "  Or sign-in with Google",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member yet? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signUp");
                      },
                      child: Text(
                        " Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
