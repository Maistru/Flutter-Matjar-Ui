import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/core/services/my_services.dart';
import 'package:matjar/data/datasource/remote/auth/login_data.dart';
import 'package:matjar/route.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  toGoForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isHidden = true.obs;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  MyServices myServices = Get.find();
  LoginData loginData = LoginData(Get.find());
  @override
  login() async {
    if (formState.currentState!.validate()) {
      myServices.sharedPreferences.setString("step", "2");
      Get.offNamed(MyRoute.homescreen);
    } else {
      print("not valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed("/signup");
  }

  @override
  toGoForgetPassword() {}
}
