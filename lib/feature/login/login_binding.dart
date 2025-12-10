import 'package:get/get.dart';
import 'package:tugas_magang_hub/feature/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(()=>LoginController());
  }
}