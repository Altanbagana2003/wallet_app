import 'package:flutter/material.dart';
import 'package:wallet_app/features/Home/avatars.dart';

import 'package:wallet_app/features/Home/top_section.dart';
import 'package:wallet_app/features/Home/transacion_history_title.dart';
import 'package:wallet_app/features/Home/transaction_history_widget.dart';

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
          const TopSection(),
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TransactionHistoryTitle(
                  title: "Гүйлгээний Түүх",
                  buttonText: "Бүгдийг харах",
                ),
                const SizedBox(height: 10),
                TransactionHistoryWidget(
                  img: "assets/img/Frame 9 (1).png",
                  title: "Upwork",
                  subTitle: "Өнөөдөр",
                  price: "+ \$ 850.00",
                  isIncome: true,
                ),
                const SizedBox(height: 10),
                TransactionHistoryWidget(
                  img: "assets/img/Frame 9.png",
                  title: "Шилжүүлэг",
                  subTitle: "Өчигдөр",
                  price: "- \$ 85.00",
                  isIncome: false,
                ),
                const SizedBox(height: 10),
                TransactionHistoryWidget(
                  img: "assets/img/Frame 9 (2).png",
                  title: "Paypal",
                  subTitle: "Jan 30, 2022",
                  price: "+ \$ 1,406.00",
                  isIncome: true,
                ),
                const SizedBox(height: 10),
                TransactionHistoryWidget(
                  img: "assets/img/Frame 9 (3).png",
                  title: "Youtube",
                  subTitle: "Jan 16, 2022",
                  price: "- \$ 11.99",
                  isIncome: false,
                ),
                const SizedBox(height: 10),
                TransactionHistoryTitle(
                  title: "Send Again",
                  buttonText: "See all",
                ),
                const SizedBox(height: 10),
                const Avatars(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
