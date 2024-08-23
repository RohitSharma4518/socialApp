import 'package:get/get.dart';
import 'package:social/Modules/Home/Controller/like_controller.dart';
import 'package:social/Modules/Home/Controller/home_controller.dart';
import 'package:social/Modules/Login/login_controller.dart';
import 'package:social/Modules/SIgnup/signup_controller.dart';

class GlobalControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LikedsController());
    Get.put(LoginController());
    Get.put(SignupController());
    Get.put(HomeController());
  }
}
