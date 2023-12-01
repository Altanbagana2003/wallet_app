import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app/features/receipt/receipt.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/wallet/header.dart';

class BillPayment extends StatelessWidget {
  const BillPayment({super.key});

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
              title: "Bill Payment",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/Group 29.png",
                          height: size.height * 0.08,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        "You will pay Youtube Premium for one month with BCA OneKlik",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 20),
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
                    SizedBox(height: size.height * 0.3),
                    CustomButton(
                        buttonText: "Баталгаажуулах",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Receipt())));
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
