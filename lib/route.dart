import 'package:get/get.dart';
import 'package:matjar/core/middleware/my_middleware.dart';
import 'package:matjar/view/screen/home/home.dart';
import 'package:matjar/view/screen/auth/login.dart';
import 'package:matjar/view/screen/home/home_secreen.dart';
import 'package:matjar/view/screen/onboarding/onboarding.dart';
import 'package:matjar/view/screen/auth/signup.dart';

class MyRoute {
  // ===========Auth============
  static const String login = "/login";
  static const String signUp = "/signup";
  // ===========onboarding============
  static const String onboarding = "/";
  // ===========Home============
  static const String homescreen = "/homescreen";
  static const String home = "/home";
}

List<GetPage<dynamic>>? getPages = [
  GetPage(name: MyRoute.login, page: () => const Login()),
  GetPage(name: MyRoute.signUp, page: () => const SignUp()),
  GetPage(
    name: MyRoute.onboarding,
    page: () => const OnBoarding(),
  ),
  GetPage(name: MyRoute.homescreen, page: () => const HomeScreen()),
  GetPage(name: MyRoute.home, page: () => const Home()),
];
