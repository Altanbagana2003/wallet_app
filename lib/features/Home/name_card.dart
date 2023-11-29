import 'package:flutter/material.dart';
import 'package:wallet_app/features/Home/come.dart';
import 'package:wallet_app/features/Home/three_dot.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: size.width * 0.9,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFF2F7E79),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Нийт үлдэгдэл",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ThreeDot(),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "\$ 2,548.00",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Come(
                price: "\$ 1,840.00",
                title: "Орлого",
                image: "assets/img/Frame 5.png",
              ),
              Come(
                price: "\$ 284.00",
                title: "Зарлага",
                image: "assets/img/Frame 7.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
