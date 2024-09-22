import 'package:filmflix/views/games/game_Splash.dart';
import 'package:filmflix/views/home/widgets/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:filmflix/utils/constants/app_colors.dart';
import '../games/games.dart';
import 'widgets/home_grid_data.dart';
import 'widgets/search_field.dart';
import 'package:audioplayers/audioplayers.dart';


class Home extends StatelessWidget {
 Home({super.key});
  final AudioPlayer _audioPlayer = AudioPlayer(); // Create an AudioPlayer instance

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
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
        ),
        actions: [  IconButton(
            onPressed: _playGameSound, // Call the sound playing method
            icon: Icon(CupertinoIcons.game_controller, color: Colors.white, size: 22),
          ) ],
        backgroundColor: kprimerycolors,
        title: const Text(
          "FILM FLIX",
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
           HomeSearchField(),
            const SizedBox(height: 15),
            // Ensure HomeGridData is wrapped correctly
            HomeGridData(),
          ],
        ),
      ),
    );
  }

  void _playGameSound() async {
    await _audioPlayer.play(AssetSource('audio/mixkit-completion-of-a-level-2063.mp3'));
    // Navigate to your game screen here
    Get.to(GameSplash()); // Replace with your actual GameScreen widget
  }
}
