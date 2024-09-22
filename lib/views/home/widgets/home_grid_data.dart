import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filmflix/utils/data/webview.dart'; // Your WebviewScreen import
import '../../../utils/constants/contants.dart'; // Assuming this contains homeData

class HomeGridData extends StatelessWidget {
  const HomeGridData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: homeData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 2, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                navigateWeb(index);
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    homeData[index],
                    style: const TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfontregular",
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  navigateWeb(int index) {
    switch (index) {
      case 0: // Changed to index 0
        Get.to(() => const WebviewScreen(
            url: "https://youtu.be/JOHOezhX-W0?si=PTjPz9jJdRMtW1nF"));
        break;
      case 1:
        Get.to(() => const WebviewScreen(url: "https://www.netflix.com/login"));
        break;
      case 2:
        Get.to(() =>
            const WebviewScreen(url: "https://www.youtube.com/@cakebox15/videos"));

        break;

      case 3:
        Get.to(() => const WebviewScreen(
            url: "https://www.youtube.com/@kidocartoons-k8i/videos"));

        break;
      case 4:
      Get.to(()=>const WebviewScreen(url: "https://kodub.itch.io/polytrack"));
        break;
      case 5:
        Get.to(() =>
            const WebviewScreen(url: "https://www.youtube.com/@YouTube/shorts"));
        break;

      default:
        print("Value is unknown");
    }
  }
}
