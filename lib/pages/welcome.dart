import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
            Positioned(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(33),
                      child: const Text(
                        "Welcome Brozar",
                        style: TextStyle(fontSize: 26, fontFamily: "myfont"),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(30, 0, 30, 18),
                        child: SvgPicture.asset(
                          "assets/icons/chat.svg",
                        )),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[400]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 79, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 18, color: Colors.grey[850]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/main_bottom.png"),
            ),
          ],
        ),
      ),
    );
  }
}
