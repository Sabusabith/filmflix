import 'package:filmflix/routes/approutes.dart';
import 'package:filmflix/views/auth/login.dart';
import 'package:filmflix/views/games/games.dart';
import 'package:get/get.dart';


class GameSplashController extends GetxController{

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    timerFn();
  }

  timerFn(){
    Future.delayed(Duration(seconds: 3)).then((value) => Get.off(()=>GameScreen()));
  }

}