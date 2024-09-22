import 'package:get/get.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebviewController extends GetxController {
  final String url;



  WebviewController(this.url);

  var isLoading = true.obs;
  InAppWebViewController? inAppWebViewController;

  @override
  void onInit() {
    super.onInit();
    isLoading(true); // Start loading state
  }

  // Called when page starts loading
  void onLoadStart() {
    isLoading(true); // Set loading state to true
  }

  // Called when page stops loading
  void onLoadStop() {
    isLoading(false); // Set loading state to false
  }

  // Error handler
  void onError(String error) {
    print("Error loading page: $error");
  }

  // When closing the web view
  void onCloseWebView() {
    Get.back(result: true);
  }


  //search controller
    var searchText = ''.obs;

  void updateSearchText(String text) {
    searchText.value = text;
  }
}
