import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/colors.dart';
import 'package:wallet_app/features/Auth/signup.dart';
import 'package:wallet_app/features/Layout/layout.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/shared/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.48,
            child: Stack(
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
                  left: size.width * 0.4,
                  child: Text(
                    "Тавтай морилно уу?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: size.width * 0.2,
                  top: size.height * 0.26,
                  child: Image.asset(
                    'assets/img/undraw_done_checking_re_6vyx 1.png',
                    height: size.height * 0.2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Enter your email address",
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  isPassword: false,
                  placeHolder: "Enter your password",
                  controller: passwordController,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
              buttonText: "Нэвтрэх",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Layout(onPage: 0))));
              }),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Бүртгүүлэх"),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUpScreen())));
                  },
                  child: const Text(
                    "Бүртгүүлэх",
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
