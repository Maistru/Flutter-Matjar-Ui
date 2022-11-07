import 'package:flutter/material.dart';
import 'package:matjar/core/constant/color.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Settings"),
        centerTitle: true,
      ),
    );
  }
}
