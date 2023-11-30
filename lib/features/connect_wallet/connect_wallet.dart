import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallet_app/features/connect_wallet/account.dart';
import 'package:wallet_app/features/connect_wallet/wallet_text_field.dart';
import 'package:wallet_app/features/shared/custom_text_field.dart';
import 'package:wallet_app/features/wallet/header.dart';

class ConnectWallet extends StatefulWidget {
  const ConnectWallet({super.key});

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  bool isCart = true;
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
              img: "assets/img/Frame 4.png",
              title: "Түрийвч цэнэглэх",
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                width: size.width,
                height: size.height * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
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
                              if (isCart) {
                                isCart = false;
                              } else {
                                isCart = true;
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
                                color: isCart
                                    ? Colors.white
                                    : const Color(0xFFF4F6F6),
                              ),
                              child: const Center(
                                  child: Text(
                                "Картууд",
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
                              if (isCart) {
                                isCart = false;
                              } else {
                                isCart = true;
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
                                color: isCart
                                    ? const Color(0xFFF4F6F6)
                                    : Colors.white,
                              ),
                              child: const Center(
                                  child: Text(
                                "Аккаунт",
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
                    isCart
                        ? Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  "assets/img/Cards.png",
                                  width: size.width * 0.8,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Картны мэдээлэлээ нэмэх",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: size.width * 0.7,
                                child: const Text(
                                  "Энд холбох  карт нь зөвхөн  таны нэр дээр байх ёстой.",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              WalletTextField(
                                isPassword: false,
                                placeHolder: "КАРТ ДЭЭРХ НЭР",
                                controller: nameController,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.5,
                                    child: WalletTextField(
                                      isPassword: false,
                                      placeHolder: "КАРТЫН ДУГААР",
                                      controller: cardNumberController,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: WalletTextField(
                                      isPassword: false,
                                      placeHolder: "CVC",
                                      controller: cvcController,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.5,
                                    child: WalletTextField(
                                      isPassword: false,
                                      placeHolder: "ДУУСАХ ХУГАЦАА  YYYY/MM",
                                      controller: dateController,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: WalletTextField(
                                      isPassword: false,
                                      placeHolder: "ZIP",
                                      controller: zipController,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : const Account(),
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
