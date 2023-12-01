import 'package:flutter/material.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/wallet/header.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Амжилттай төлөгдлөө",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF438883),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Youtube Premium"),
                            SizedBox(height: 10),
                            Image.asset(
                              "assets/img/correc.png",
                              height: size.height * 0.03,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Гүйлгээний дэлгэрэнгүй",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Төлбөрийн хэрэгсэл"),
                        Text("дебит карт"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Төлөв"),
                        Text(
                          "Хийгдсэн",
                          style: TextStyle(
                              color: Color(0xFF438883),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Цаг"),
                        Text("08:15 AM"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Гүйлгээний дугаар"),
                        Text("2092913832472.."),
                      ],
                    ),
                    //!
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
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/image 17.png",
                          height: size.height * 0.1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.7,
                          child: CustomButton(
                              buttonText: "Share receipt", onTap: () {}),
                        ),
                      ],
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
