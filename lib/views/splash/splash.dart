import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controllers/splash_controller.dart';
import '../../utils/constants/app_colors.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final _splashcontroller = Get.put(SplashController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: GetBuilder<SplashController>(
        init: _splashcontroller,
        builder: (controller) => 
         Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [kprimerycolors, ksecondarycolor]),
                  ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(animatedTexts: [
                      
                      // ignore: prefer_const_constructors
                      ColorizeAnimatedText("FILM FLIX", textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                     letterSpacing: 2,
                    fontFamily: "myfontregular",
                    fontSize: 35,color: Colors.white
                                      ), colors: colorizeColors)
                    ],isRepeatingAnimation: true,)
                 
                  ],
                ),
        ),
      ),
    );
  }
}
