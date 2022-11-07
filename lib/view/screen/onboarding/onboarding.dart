import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/controller/onboarding_controller.dart';
import 'package:matjar/core/constant/color.dart';
import 'package:matjar/data/datasource/static/onboarding_static.dart';
import 'package:matjar/view/widget/onboarding/custom_bottom_onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Logo"),
                InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        persistent: true,
                        backgroundColor: AppColor.white,
                        enableDrag: true,
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 100),
                            height: 175,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                            ),
                            child: ListView(
                              children: [
                                Text("1".tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: MaterialButton(
                                    color: AppColor.primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {
                                      controller.changeLanguage("en");
                                    },
                                    child: Text(
                                      "39".tr,
                                      style: TextStyle(
                                          color: AppColor.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: MaterialButton(
                                    color: AppColor.primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {
                                      controller.changeLanguage("ar");
                                    },
                                    child: Text(
                                      "40".tr,
                                      style: TextStyle(
                                          color: AppColor.white, fontSize: 16),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      );
                    },
                    child: const Icon(Icons.language_rounded)),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: (value) {
                controller.nextPage(value);
              },
              itemCount: onBoardingList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("${onBoardingList[index].img}"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${onBoardingList[index].title}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${onBoardingList[index].body}",
                      style: TextStyle(fontSize: 16, color: AppColor.grey2),
                    ),
                  ],
                );
              },
            ),
          ),
          GetBuilder<OnBoardingControllerImp>(
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      onBoardingList.length,
                      (index) => AnimatedContainer(
                          height: 9,
                          width: (controller.currentPage == index ? 20 : 9),
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: (controller.currentPage == index)
                                ? AppColor.primaryColor
                                : AppColor.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          duration: const Duration(milliseconds: 900))),
                ],
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomBottomOnBoarding(
            title: "9".tr,
            onTapBottom: () {
              controller.goToLogin();
            },
          ),
          CustomBottomOnBoarding(
            title: "17".tr,
            onTapBottom: () {
              controller.goToSignUp();
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
