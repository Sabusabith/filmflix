import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:filmflix/core/controllers/game_controller/game_splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controllers/splash_controller.dart';
import '../../utils/constants/app_colors.dart';

class GameSplash extends StatelessWidget {
  const GameSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final _splashcontroller = Get.put(GameSplashController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: GetBuilder<GameSplashController>(
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
                     ScaleAnimatedText(
                      
                      
                      "FLIX GAMES", textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                     letterSpacing: 2,
                    fontFamily: "myfontregular",
                    fontSize: 35,color: Colors.white
                                      ),duration: Duration(seconds: 5)
                                      )
                                      
                    ],isRepeatingAnimation: false,)
                 
                  ],
                ),
        ),
      ),
    );
  }
}
