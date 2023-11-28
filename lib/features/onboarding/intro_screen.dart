import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/colors.dart';
import 'package:wallet_app/features/Auth/login.dart';
import 'package:wallet_app/features/Auth/signup.dart';
import 'package:wallet_app/features/shared/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.7,
              child: Stack(
                children: [
                  Image.asset("assets/img/Group 2.png"),
                  Positioned(
                    top: size.height * 0.18,
                    child: Image.asset(
                      "assets/img/Group 38.png",
                      height: size.height * 0.5,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.18,
                    left: size.width * 0.09,
                    child: Image.asset(
                      "assets/img/Coint.png",
                      height: size.height * 0.1,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.23,
                    right: size.width * 0.2,
                    child: Image.asset(
                      "assets/img/Donut.png",
                      height: size.height * 0.1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: size.width * 0.8,
              child: const Text(
                "Ухаалаг зарцуулж илүү хэмнэе",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF438883),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonText: "эхлэх",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SignUpScreen())));
              },
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
