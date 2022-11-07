import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/controller/auth/signup_controller.dart';
import 'package:matjar/core/constant/color.dart';
import 'package:matjar/core/function/validinput.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = SignUpControllerImp();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(
          'Sign up',
          style: TextStyle(fontSize: 40, color: AppColor.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            const Center(
                child: Text("Hello Again!",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "SIgn Up With Your Email And Password \n OR Continue Social Media",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 18, color: AppColor.grey2, height: 1.5),
            )),
            const SizedBox(
              height: 50,
            ),
            Form(
              key: controller.formState,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: AppColor.primaryColor,
                    controller: controller.username,
                    validator: (value) {
                      return validInput(value!, 3, 100, "username");
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.primaryColor)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Icon(
                        Icons.person_outline,
                        color: AppColor.primaryColor,
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(color: AppColor.primaryColor),
                      hintText: "Enter Your Username",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: AppColor.primaryColor,
                    controller: controller.email,
                    validator: (value) {
                      return validInput(value!, 3, 100, "email");
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.primaryColor)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColor.primaryColor,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(color: AppColor.primaryColor),
                      hintText: "Enter Your Email",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(() => TextFormField(
                        cursorColor: AppColor.primaryColor,
                        controller: controller.password,
                        validator: (value) {
                          return validInput(value!, 8, 30, "password");
                        },
                        obscureText: controller.isHidden.value,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.primaryColor)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          suffixIcon: IconButton(
                            onPressed: () => controller.isHidden.toggle(),
                            icon: (controller.isHidden.value == true
                                ? Icon(
                                    Icons.lock_outlined,
                                    color: AppColor.primaryColor,
                                  )
                                : Icon(Icons.lock_open_outlined,
                                    color: AppColor.primaryColor)),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: AppColor.primaryColor),
                          hintText: "Enter Your Password",
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                controller.signUp();
              },
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("have an account ?"),
                InkWell(
                    onTap: () {
                      controller.goToLogin();
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(color: AppColor.primaryColor),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
