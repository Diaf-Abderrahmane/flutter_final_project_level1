import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              top: 0,
              left: 0,
            ),
            Positioned(
              child: Image.asset("assets/images/main_bottom.png"),
              bottom: 0,
              left: 0,
            ),
          ],
        ),
      ),
    );
  }
}
