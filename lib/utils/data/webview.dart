import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../../core/controllers/webview_controller.dart';
import '../constants/app_colors.dart';

class WebviewScreen extends StatelessWidget {
  final String url;

  const WebviewScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WebviewController>(
      init: WebviewController(url),  // Initialize the controller with the URL
      builder: (controller) {
        return Scaffold(
          backgroundColor: kprimerycolors,
          appBar: AppBar(
            elevation: 0,
            surfaceTintColor: kprimerycolors,
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: kprimerycolors,
            title: Text(
              "FILM FLIX",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontFamily: "myfontregular",
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                InAppWebView(
                 
                  
                  initialUrlRequest: URLRequest(url: WebUri(url)),
                  onWebViewCreated: (InAppWebViewController webViewController) {
                    controller.inAppWebViewController = webViewController;
                  },
                  onUpdateVisitedHistory: (controller, url, isReload) {
             print("Visited: $url");
                  },
                  onLoadStart: (controller, url) {
                    // Call onLoadStart when the page starts loading
                    Get.find<WebviewController>().onLoadStart();
                  },
                  onLoadStop: (controller, url) async {
                    // Call onLoadStop when the page finishes loading
                    Get.find<WebviewController>().onLoadStop();
                    // Print the current URL
                    if (url != null) {
                      print("Current URL: $url");
                    }
                  },
                  onLoadError: (controller, url, code, message) {
                    // Handle loading error
                    Get.find<WebviewController>().onError(message);
                  },
                  initialSettings: InAppWebViewSettings(
                 clearCache: true,
                    javaScriptEnabled: true,
                    allowsInlineMediaPlayback: true,
                    mediaPlaybackRequiresUserGesture: false,
                    supportZoom: false,
                    useWideViewPort: false,
                  ),
                ),
                Obx(() {
                  return controller.isLoading.value
                      ? Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        )
                      : SizedBox.shrink(); // Hide the indicator when not loading
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
