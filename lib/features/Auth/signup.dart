import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/colors.dart';
import 'package:wallet_app/features/Auth/login.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/shared/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/img/Rectangle 28.png"),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/img/eclipse.png",
                  height: size.height * 0.2,
                ),
              ),
              Positioned(
                top: size.height * 0.12,
                left: size.width * 0.25,
                child: Column(
                  children: const [
                    Text(
                      "Тавтай морилно уу?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Орлого, зарлагаа хянахад тань туслана",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Бүтэн нэрээ оруулна уу?",
                  controller: fullNameController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Имэйлээ оруулна уу?",
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Нууц үгээ оруулаарай",
                  controller: passwordController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Нууц үгээ давтан оруулаарай",
                  controller: rePasswordController,
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          CustomButton(
              buttonText: "Бүртгүүлэх",
              onTap: () {
                log(fullNameController.text);
                log(emailController.text);
                log(passwordController.text);
                log(rePasswordController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LoginScreen())));
              }),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Хэрэглэгчийн эрх бий юу?"),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginScreen())));
                  },
                  child: const Text(
                    "Нэвтрэх",
                    style: TextStyle(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
