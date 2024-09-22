import 'package:filmflix/core/controllers/searchcontroller.dart';
import 'package:filmflix/core/controllers/webview_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../views/home/widgets/search_result.dart';

class HomeSearchField extends StatelessWidget {
  HomeSearchField({super.key});
  final controller = TextEditingController();
SearchControllers searchController = Get.put(SearchControllers());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 45,
      color: Colors.transparent.withOpacity(.4),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Obx(()=>
          TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 7),
              prefixIcon: Icon(
                CupertinoIcons.search,
                size: 20,
                color: Colors.grey.shade100,
              ),
                suffixIcon: searchController.searchText.value.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: GestureDetector(onTap: () {
                            Get.to(() => SearchResultsScreen(
                      query: searchController.searchText.value.toString(),
                    ));
                        },
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    : null,
              hintText: "Search videos, movies, or shorts....",
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 15),
              border: InputBorder.none,
            ),
             onChanged: (value) {
                searchController.updateSearchText(value);
              },
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                Get.to(() => SearchResultsScreen(
                      query: value.toString(),
                    ));
              }
            },
          ),
        ),
      ),
    );
  }
}
