import 'package:flutter/material.dart';

class WaitingWidget extends StatelessWidget {
  String img;
  String title;
  String subTitle;

  WaitingWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              img,
              height: 55,
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(subTitle),
              ],
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFFECF9F8),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: const Text(
              "Төлөх",
              style: TextStyle(
                color: Color(0xFF438883),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
