import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  const Avatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/img/Group 11.png",
          height: 55,
        ),
        Image.asset(
          "assets/img/Group 12.png",
          height: 55,
        ),
        Image.asset(
          "assets/img/Group 12.png",
          height: 55,
        ),
        Image.asset(
          "assets/img/Group 14.png",
          height: 55,
        ),
        Image.asset(
          "assets/img/Group 15.png",
          height: 55,
        ),
      ],
    );
  }
}
