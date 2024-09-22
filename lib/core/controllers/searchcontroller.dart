import 'package:get/get.dart';

class SearchControllers extends GetxController {
  var searchText = ''.obs;

  void updateSearchText(String text) {
    searchText.value = text;
  }
}