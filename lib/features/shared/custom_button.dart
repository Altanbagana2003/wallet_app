import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  final VoidCallback onTap;
  CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.width * 0.1)),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            size.width * 0.9,
            size.height * 0.06,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
      ),
      onPressed: onTap,
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
