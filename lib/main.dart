import 'package:binding_getx/all_controller_binding.dart';
import 'package:binding_getx/home_controller.dart';
import 'package:binding_getx/my_controller.dart';
import 'package:binding_getx/myapp_controller_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'home_controller_binding.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(ServiceHome());
}

class ServiceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: HomeControllerBinding(),
        ),
      ],

      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => Home(),
      //       binding: BindingsBuilder(() => {
      //             Get.lazyPut<HomeControllerBinding>(
      //                 () => HomeControllerBinding())
      //           }))
      // ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<MyController>().count}',
                    style: TextStyle(fontSize: 25),
                  )),
              RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("Home"),
                onPressed: () {
                  //Get.to(Home());

                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
