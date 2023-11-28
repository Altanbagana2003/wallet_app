import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function layoutChange;
  const HomeScreen({super.key, required this.layoutChange});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.48,
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
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Өглөөний мэнд?"),
                        Text("Tushig"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
