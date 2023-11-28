import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  bool isPassword;
  TextEditingController controller;
  String placeHolder;
  CustomTextField({
    super.key,
    required this.isPassword,
    required this.placeHolder,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Хоосон байж болохгүй!';
        }
        return null;
      },
      obscureText: isPassword ? true : false,
      controller: controller,
      // style: const TextStyle(color: AppColors.dark500),
      // cursorColor: AppColors.onboardDefaultColor,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        hintText: placeHolder,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
    );
  }
}
