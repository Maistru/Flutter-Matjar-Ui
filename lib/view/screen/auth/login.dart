import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar/controller/auth/login_controller.dart';
import 'package:matjar/core/constant/color.dart';
import 'package:matjar/core/function/validinput.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 40, color: AppColor.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              "Wellcome Back you've \n been missed!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: AppColor.grey2),
            )),
            Image.asset(
              "assets/images/matjar1.png",
              height: 250,
            ),
            Form(
              key: controller.formState,
              child: Column(
                children: [
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
                        // style: TextStyle(color: AppColor.grey),
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
              height: 10,
            ),
            InkWell(
              child: Text("Forget Password",
                  style: TextStyle(color: AppColor.primaryColor),
                  textAlign: TextAlign.end),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                controller.login();
              },
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Login",
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
                const Text("Don't have an account ?"),
                InkWell(
                    onTap: () {
                      controller.goToSignUp();
                    },
                    child: Text(
                      " Sign up",
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
