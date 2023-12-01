import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app/features/connect_wallet/bill_detail.dart';
import 'package:wallet_app/features/connect_wallet/wallet_text_field.dart';
import 'package:wallet_app/features/shared/custom_button.dart';
import 'package:wallet_app/features/shared/custom_text_field.dart';
import 'package:wallet_app/features/wallet/header.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

List<String> list = ['Netflix', 'Youtube'];

class _AddExpenseState extends State<AddExpense> {
  TextEditingController priceController = TextEditingController();
  TextEditingController fateController = TextEditingController();
  String dropdownValue = list.first;

  @override
  void initState() {
    priceController.text = "\$ 48.00";
    super.initState();
  }

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
              title: "Зарлага нэмэх",
              isDot: true,
            ),
            Positioned(
              bottom: 0,
              left: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                width: size.width * 0.9,
                height: size.height * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "ГҮЙЛГЭЭНИЙ НЭР",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xFF666666),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 0,
                        isExpanded: true,
                        style: const TextStyle(color: Color(0xFF666666)),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                            if (value == "Netflix") {
                              priceController.text = "\$ 48.00";
                            } else if (value == "Youtube") {
                              priceController.text = "\$ 32.00";
                            } else {
                              priceController.text = "\$ 0.00";
                            }

                            setState(() {});
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "ҮНИЙН ДҮН",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width,
                      child: WalletTextField(
                        isPassword: false,
                        placeHolder: "\$",
                        controller: priceController,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "ТӨЛБӨР",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/img/Screenshot 2023-12-01 at 08.27.58.png",
                      width: size.width,
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                        buttonText: "Дараах",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => BillDetail())));
                        })
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
