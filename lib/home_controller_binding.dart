import 'package:binding_getx/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
