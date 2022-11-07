import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/binding/my_binding.dart';
import 'package:matjar/controller/onboarding_controller.dart';
import 'package:matjar/core/localization/translation.dart';
import 'package:matjar/core/services/my_services.dart';
import 'package:matjar/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matjar App',
      theme: controller.appTheme,
      locale: controller.language,
      translations: MyTranslation(),
      initialBinding: MyBinding(),
      getPages: getPages,
    );
  }
}
