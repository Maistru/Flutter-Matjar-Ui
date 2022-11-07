import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/controller/home/homescreen_controller.dart';
import 'package:matjar/core/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            onPressed: () {},
            child: const Icon(Icons.shopping_basket_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (value) {
                controller.changPage(value);
              },
              type: BottomNavigationBarType.fixed,
              fixedColor: AppColor.primaryColor,
              items: const [
                BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "settings", icon: Icon(Icons.settings)),
                BottomNavigationBarItem(
                    label: "favorite", icon: Icon(Icons.favorite)),
                BottomNavigationBarItem(
                    label: "Account", icon: Icon(Icons.account_circle)),
              ]),
          body: controller.page.elementAt(controller.currentIndex),
        );
      },
    );
  }
}
