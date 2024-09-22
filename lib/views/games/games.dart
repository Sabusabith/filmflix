import 'package:filmflix/views/games/widgets/game_grid_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/app_colors.dart';

class GameScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: kprimerycolors,
        leading:  Padding(
          padding: EdgeInsets.only(left: 10),
          child: GestureDetector(onTap: () {
            Get.back();
          },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
       
        backgroundColor: kprimerycolors,
        title:  Text(
          "FLIX GAMES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontFamily: "myfontregular",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kprimerycolors, ksecondarycolor],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
         GameGridData()
         
            // Ensure HomeGridData is wrapped correctly
          
          ],
        ),
      ),
    );
  }
}