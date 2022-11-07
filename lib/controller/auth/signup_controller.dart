import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/route.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  RxBool isHidden = true.obs;

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      await Get.offNamed(MyRoute.login);
    } else {
      print("not valid");
    }
  }

  @override
  goToLogin() {
    Get.offNamed("/login");
  }
}
