// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 118,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(33),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 26, fontFamily: "myfont"),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/login.svg"),
                  Container(
                    margin: EdgeInsets.fromLTRB(55, 30, 55, 0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple[100]),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 18),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person)),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple[100]),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 18),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.visibility)),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple[400]),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        horizontal: 77, vertical: 13)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(27))),
                              ),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )),
                        ),
                        Text(
                          "Don't have an account ? Sign up",
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              width: 150,
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/login_bottom.png"),
            )
          ],
        ),
      ),
    );
  }
}
