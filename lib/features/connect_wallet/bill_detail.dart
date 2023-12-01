import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app/features/bill_payment/bill_payment.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/wallet/header.dart';

class BillDetail extends StatefulWidget {
  const BillDetail({super.key});

  @override
  State<BillDetail> createState() => _BillDetailState();
}

class _BillDetailState extends State<BillDetail> {
  bool isDebit = true;
  bool isPaypal = false;
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
              img: "assets/img/Group 19.png",
              title: "Bill Details",
              isDot: true,
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
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/Group 29.png",
                          height: size.height * 0.08,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Youtube Premium",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Feb 28, 2022",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF666666),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Үнэ"),
                        Text("\$ 11.99"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Хураамж"),
                        Text("\$ 1.99"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: size.width,
                      height: 1,
                      color: Color(0xFFDDDDDD),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Нийт"),
                        Text(
                          "\$ 13.98",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Youtube Premium",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        isDebit = true;
                        isPaypal = false;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: size.width,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                          color: isDebit
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
                                  "assets/img/debit.png",
                                  height: size.height * 0.025,
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: size.width * 0.56,
                                      child: Text(
                                        "Дебит карт",
                                        style: TextStyle(
                                          color: isDebit
                                              ? Color(0xFF438883)
                                              : Color(0xFF888888),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                isDebit
                                    ? Image.asset(
                                        "assets/img/Group 23.png",
                                        height: 30,
                                      )
                                    : Image.asset(
                                        "assets/img/Ellipse 67.png",
                                        height: 30,
                                      )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        isDebit = false;
                        isPaypal = true;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: size.width,
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
                                    Container(
                                      width: size.width * 0.56,
                                      child: Text(
                                        "Paypal",
                                        style: TextStyle(
                                          color: isPaypal
                                              ? Color(0xFF438883)
                                              : Color(0xFF888888),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                isPaypal
                                    ? Image.asset(
                                        "assets/img/Group 23.png",
                                        height: 30,
                                      )
                                    : Image.asset(
                                        "assets/img/Ellipse 67.png",
                                        height: 30,
                                      )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        buttonText: "Төлөх",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => BillPayment())));
                        }),
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
