import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:matjar/view/screen/home/favorite.dart';
import 'package:matjar/view/screen/home/home.dart';
import 'package:matjar/view/screen/home/profile.dart';
import 'package:matjar/view/screen/home/settings.dart';

abstract class HomeScreenController extends GetxController {
  changPage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentIndex = 0;
  List<Widget> page = const [Home(), Settings(), Favorite(), Profile()];

  @override
  changPage(i) {
    currentIndex = i;
    update();
  }
}
