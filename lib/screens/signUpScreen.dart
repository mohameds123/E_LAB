// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
              SizedBox(height: 40),
          Text(
            "Sign Up",
            style: TextStyle(fontFamily: "myfont",
                // fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Color(0xff6DADB1)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Please enter your login amd your password",
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
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff6DADB1),
                  ),
                  hintText: "user name",
                  labelStyle: TextStyle(color: Color(0xff6DADB1)),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 12,
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
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff6DADB1),
                  ),
                  hintText: "Email",
                  labelStyle: TextStyle(color: Color(0xff6DADB1)),
                  border: InputBorder.none),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 19),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(12),
            ),
            width: 380,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  suffix: Icon(
                    Icons.visibility,
                    color: Color(0xff6DADB1),
                  ),
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xff6DADB1),
                    size: 19,
                  ),
                  hintText: "password",
                  labelStyle: TextStyle(color: Color(0xff6DADB1)),
                  border: InputBorder.none),
            ),
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
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Color(0xff6DADB1),
                  ),
                  hintText: "phone",
                  labelStyle: TextStyle(color: Color(0xff6DADB1)),
                  border: InputBorder.none),
            ),
          ),
          // TextFormField(),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff6DADB1)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 120, vertical: 12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
            ),
            child: Text(
              "Sign Up",
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
                Text("Already have an account? "),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/loginIn");
                    },
                    child: Text(
                      " Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    )),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            SizedBox(
              width: 299,
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                        thickness: 0.6,
                        color: Color(0xff6DADB1),
                      )),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Color(0xff6DADB1),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                        thickness: 0.6,
                        color: Color(0xff6DADB1),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Color(0xff6DADB1), width: 1)),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        color: Color(0xff6DADB1),
                        height: 27,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Color(0xff6DADB1), width: 1)),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        color: Color(0xff6DADB1),
                        height: 27,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Color(0xff6DADB1), width: 1)),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        color: Color(0xff6DADB1),
                        height: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
