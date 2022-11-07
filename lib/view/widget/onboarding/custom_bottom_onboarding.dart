import 'package:flutter/material.dart';
import 'package:matjar/core/constant/color.dart';

class CustomBottomOnBoarding extends StatelessWidget {
  final String title;
  final void Function()? onTapBottom;
  const CustomBottomOnBoarding({
    Key? key,
    required this.title,
    required this.onTapBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapBottom,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: 200,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // color: AppColor.primaryColor,
          border: Border.all(color: AppColor.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(color: AppColor.primaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
