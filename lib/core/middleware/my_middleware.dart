import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:matjar/core/services/my_services.dart';
import 'package:matjar/route.dart';

class MyMiddleware extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? priority = 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == '2') {
      return const RouteSettings(name: MyRoute.homescreen);
    }
    if (myServices.sharedPreferences.getString('step') == '1') {
      return const RouteSettings(name: MyRoute.login);
    }
    return null;
  }
}
