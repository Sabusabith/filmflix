import 'package:filmflix/routes/approutes.dart';
import 'package:filmflix/views/auth/login.dart';
import 'package:get/get.dart';

import '../../views/home/home.dart';

class SplashController extends GetxController{

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    timerFn();
  }

  timerFn(){
    Future.delayed(Duration(seconds: 5)).then((value) => Get.to(()=>Home()));
  }

}