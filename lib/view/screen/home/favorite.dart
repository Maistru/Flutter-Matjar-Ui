import 'package:flutter/material.dart';
import 'package:matjar/core/constant/color.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Favorite"),
        centerTitle: true,
      ),
    );
  }
}
