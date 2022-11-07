import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/core/constant/apptheme.dart';
import 'package:matjar/core/services/my_services.dart';
import 'package:matjar/route.dart';

abstract class OnBoardingController extends GetxController {
  nextPage(int index);
  goToLogin();
  goToSignUp();
}

class OnBoardingControllerImp extends OnBoardingController {
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  late Locale? language;
  late PageController pageController;

  int currentPage = 0;
  @override
  nextPage(index) {
    currentPage = index;
    update();
  }

  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    pageController = PageController();
    String? sharedLang = myServices.sharedPreferences.getString('lang');
    if (sharedLang == 'ar') {
      language = const Locale('ar');
      appTheme = themeArabic;
    } else if (sharedLang == 'en') {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }

  @override
  goToLogin() {
    Get.offNamed(MyRoute.login);
  }

  @override
  goToSignUp() {
    Get.offNamed(MyRoute.signUp);
  }
}
