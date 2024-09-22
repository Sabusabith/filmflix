import 'package:filmflix/routes/approutes.dart';
import 'package:filmflix/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/home/home.dart';
import 'views/splash/splash.dart';

void main(List<String> args) {
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     
      debugShowCheckedModeBanner: false,
    home: Splash(),
    );
  }
}