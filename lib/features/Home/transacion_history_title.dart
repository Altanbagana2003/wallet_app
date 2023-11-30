import 'package:flutter/material.dart';

class TransactionHistoryTitle extends StatelessWidget {
  String title;
  String buttonText;

  TransactionHistoryTitle(
      {super.key, required this.title, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF666666),
          ),
        ),
      ],
    );
  }
}
