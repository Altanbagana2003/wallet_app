import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallet_app/features/Home/avatars.dart';
import 'package:wallet_app/features/Home/transacion_history_title.dart';
import 'package:wallet_app/features/Home/transaction_history_widget.dart';
import 'package:wallet_app/features/connect_wallet/connect_wallet.dart';
import 'package:wallet_app/features/wallet/header.dart';
import 'package:wallet_app/features/wallet/menus.dart';
import 'package:wallet_app/features/wallet/waiting_widget.dart';

class WalletScreen extends StatefulWidget {
  final Function layoutChange;
  const WalletScreen({super.key, required this.layoutChange});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  bool isTransaction = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            WalletHeader(
              isDot: false,
              img: "assets/img/Frame 4.png",
              title: "Түрийвч",
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                width: size.width,
                height: size.height * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Нийт үлдэгдэл",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "\$ 2,548.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Menus(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const ConnectWallet())));
                            },
                            img: "assets/img/plus.png",
                            title: "Нэмэх",
                          ),
                          const SizedBox(width: 10),
                          Menus(
                            onPress: () {},
                            img: "assets/img/qr-code-fill 1.png",
                            title: "Төлөх",
                          ),
                          const SizedBox(width: 10),
                          Menus(
                            onPress: () {},
                            img: "assets/img/send.png",
                            title: "Илгээх",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: size.width * 0.9,
                      height: size.height * 0.055,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        color: Color(0xFFF4F6F6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              log('gg');
                              if (isTransaction) {
                                isTransaction = false;
                              } else {
                                isTransaction = true;
                              }

                              setState(() {});
                            },
                            child: Container(
                              height: size.height * 0.045,
                              width: size.width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                color: isTransaction
                                    ? Colors.white
                                    : const Color(0xFFF4F6F6),
                              ),
                              child: const Center(
                                  child: Text(
                                "Гүйлгээнүүд",
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (isTransaction) {
                                isTransaction = false;
                              } else {
                                isTransaction = true;
                              }

                              setState(() {});
                            },
                            child: Container(
                              height: size.height * 0.045,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                color: isTransaction
                                    ? const Color(0xFFF4F6F6)
                                    : Colors.white,
                              ),
                              child: const Center(
                                  child: Text(
                                "Хүлээгдэж буй гүйлгээ",
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    isTransaction
                        ? Container(
                            width: size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
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
                              ],
                            ),
                          )
                        : Container(
                            width: size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                WaitingWidget(
                                  img: "assets/img/Frame 9 (3).png",
                                  title: "Youtube",
                                  subTitle: "Feb 28, 2022",
                                ),
                                const SizedBox(height: 10),
                                WaitingWidget(
                                  img: "assets/img/elec.png",
                                  title: "Electricity",
                                  subTitle: "Mar 28, 2022",
                                ),
                                const SizedBox(height: 10),
                                WaitingWidget(
                                  img: "assets/img/home.png",
                                  title: "House Rent",
                                  subTitle: "Mar 31, 2022",
                                ),
                                const SizedBox(height: 10),
                                WaitingWidget(
                                  img: "assets/img/spotify.png",
                                  title: "Spotify",
                                  subTitle: "Feb 28, 2022",
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
