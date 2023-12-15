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
                    color: Colors.amber,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          suffixIcon: Icon(Icons.password)),
                    ),
                  )
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
