import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  bool isDot;
  String title;
  String img;

  WalletHeader(
      {super.key, required this.title, required this.img, required this.isDot});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/img/Rectangle 28.png",
        ),
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
          top: 60,
          child: Container(
            padding: const EdgeInsets.all(20),
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Image.asset(
                  img,
                  height: isDot ? size.height * 0.008 : size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
