import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import '../../utils/constants/app_colors.dart';
import 'package:filmflix/views/home/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        leading: SizedBox(),
        backgroundColor: kprimerycolors,
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [kprimerycolors, ksecondarycolor])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Image.asset(
                "assets/images/lock.png",
                height: 150,
              ),
              SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'LOGIN',
                    textStyle: TextStyle(
                        letterSpacing: 4,
                        fontFamily: "myfontregular",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    speed: const Duration(milliseconds: 600),
                  ),
                ],
                pause: Duration(seconds: 4),
                totalRepeatCount: 100,
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              Spacer(flex: 2),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Home());
                  },
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kprimerycolors.withOpacity(.2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/g.png",
                          height: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              letterSpacing: 2,
                              fontFamily: "myfontone",
                              fontSize: 10,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
