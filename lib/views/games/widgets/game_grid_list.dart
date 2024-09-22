import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filmflix/utils/data/webview.dart'; // Your WebviewScreen import
import '../../../utils/constants/contants.dart';
import 'games_list.dart'; // Assuming this contains homeData

class GameGridData extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: GridView.builder(
          itemCount: games.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => navigateWeb(index),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    games[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Simplified navigation using index to access game URLs
  void navigateWeb(int index) {
    if (index < games.length) {
      Get.to(() => WebviewScreen(url: games[index]['url']!));
    } else {
      print("Invalid game index: $index");
    }
  }
}
