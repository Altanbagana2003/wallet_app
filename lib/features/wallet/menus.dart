import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menus extends StatelessWidget {
  final VoidCallback onPress;
  String img;
  String title;

  Menus({
    super.key,
    required this.onPress,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color(0xFF549994),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  img,
                  height: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(title)
        ],
      ),
    );
  }
}
