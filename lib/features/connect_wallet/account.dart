import 'dart:developer';

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isBank = true;
  bool isDepo = false;
  bool isPaypal = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: () {
            isBank = true;
            isDepo = false;
            isPaypal = false;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: size.width * 0.8,
            height: size.height * 0.12,
            decoration: BoxDecoration(
              color: isBank
                  ? Color.fromARGB(67, 161, 205, 177)
                  : Color(0xFFFAFAFA),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/bank-fill 1.png",
                      height: size.height * 0.04,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bank Link",
                          style: TextStyle(
                            color:
                                isBank ? Color(0xFF438883) : Color(0xFF888888),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                            width: size.width * 0.5,
                            child: Text(
                              "Connect your bank account to deposit & fund",
                              style: TextStyle(
                                color: isBank
                                    ? Color(0xFF438883)
                                    : Color(0xFF888888),
                                fontSize: 12,
                              ),
                            )),
                      ],
                    ),
                    isBank
                        ? Image.asset(
                            "assets/img/correc.png",
                            height: 30,
                          )
                        : Container()
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            isBank = false;
            isDepo = true;
            isPaypal = false;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: size.width * 0.8,
            height: size.height * 0.12,
            decoration: BoxDecoration(
              color: isDepo
                  ? Color.fromARGB(67, 161, 205, 177)
                  : Color(0xFFFAFAFA),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/dollar.png",
                      height: size.height * 0.04,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Microdeposits",
                          style: TextStyle(
                            color:
                                isDepo ? Color(0xFF438883) : Color(0xFF888888),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                            width: size.width * 0.5,
                            child: Text(
                              "Connect bank in 5-7 days",
                              style: TextStyle(
                                color: isDepo
                                    ? Color(0xFF438883)
                                    : Color(0xFF888888),
                                fontSize: 12,
                              ),
                            )),
                      ],
                    ),
                    isDepo
                        ? Image.asset(
                            "assets/img/correc.png",
                            height: 30,
                          )
                        : Container()
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            isBank = false;
            isDepo = false;
            isPaypal = true;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: size.width * 0.8,
            height: size.height * 0.12,
            decoration: BoxDecoration(
              color: isPaypal
                  ? Color.fromARGB(67, 161, 205, 177)
                  : Color(0xFFFAFAFA),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/logo-paypal 1.png",
                      height: size.height * 0.04,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Paypal",
                          style: TextStyle(
                            color: isPaypal
                                ? Color(0xFF438883)
                                : Color(0xFF888888),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                            width: size.width * 0.5,
                            child: Text(
                              "Connect you paypal account",
                              style: TextStyle(
                                color: isPaypal
                                    ? Color(0xFF438883)
                                    : Color(0xFF888888),
                                fontSize: 12,
                              ),
                            )),
                      ],
                    ),
                    isPaypal
                        ? Image.asset(
                            "assets/img/correc.png",
                            height: 30,
                          )
                        : Container()
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
