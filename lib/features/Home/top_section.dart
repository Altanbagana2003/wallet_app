import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app/features/Home/name_card.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.45,
      child: Stack(
        children: [
          Image.asset("assets/img/Rectangle 28.png"),
          Positioned(
            top: 80,
            left: -50,
            child: Image.asset(
              "assets/img/Ellipse 9.png",
              height: size.height * 0.15,
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Image.asset(
              "assets/img/Ellipse 9.png",
              height: size.height * 0.1,
            ),
          ),
          Positioned(
            top: 0,
            left: 90,
            child: Image.asset(
              "assets/img/Ellipse 9.png",
              height: size.height * 0.08,
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Өглөөний мэнд?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Tushig",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/img/Frame 4.png",
                      height: size.height * 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            left: size.width * 0.05,
            child: NameCard(),
          ),
        ],
      ),
    );
  }
}
