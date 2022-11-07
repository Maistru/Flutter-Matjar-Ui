import 'package:flutter/material.dart';
import 'package:matjar/core/constant/color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Profile"),
        centerTitle: true,
      ),
    );
  }
}
