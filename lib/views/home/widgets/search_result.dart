import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../../core/controllers/webview_controller.dart';
import '../../../utils/constants/app_colors.dart';


class SearchResultsScreen extends StatelessWidget {
  final String query;

 SearchResultsScreen({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = 'https://www.youtube.com/results?search_query=${Uri.encodeComponent(query)}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(url)),
        onWebViewCreated: (InAppWebViewController controller) {},
      ),
    );
  }
}
