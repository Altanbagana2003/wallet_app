import 'package:flutter/material.dart';

class TransactionHistoryWidget extends StatelessWidget {
  String img;
  String title;
  String subTitle;
  String price;
  bool isIncome;
  TransactionHistoryWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
    required this.isIncome,
    required this.price,
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
        Text(
          price,
          style: TextStyle(
            color: isIncome ? const Color(0xFF25A969) : const Color(0xFFF95B51),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
