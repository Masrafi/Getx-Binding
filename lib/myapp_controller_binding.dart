import 'package:binding_getx/my_controller.dart';
import 'package:get/get.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
