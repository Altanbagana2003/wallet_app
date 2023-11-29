import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThreeDot extends StatelessWidget {
  const ThreeDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/img/Ellipse 10.png",
          height: 6,
        ),
        const SizedBox(width: 3),
        Image.asset(
          "assets/img/Ellipse 10.png",
          height: 6,
        ),
        const SizedBox(width: 3),
        Image.asset(
          "assets/img/Ellipse 10.png",
          height: 6,
        ),
      ],
    );
  }
}
