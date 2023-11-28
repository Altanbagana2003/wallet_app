import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/bnb_custom_painter.dart';
import 'package:wallet_app/core/utils/colors.dart';
import 'package:wallet_app/features/Home/home.dart';
import 'package:wallet_app/features/wallet/wallet.dart';

class Layout extends StatefulWidget {
  final int onPage;

  const Layout({super.key, required this.onPage});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedPos = 0;
  double bottomNavBarHeight = 80;

  // BottomNavBar Items

  @override
  void initState() {
    super.initState();

    setState(() {
      selectedPos = widget.onPage;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedPos = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: [
        HomeScreen(layoutChange: _onItemTapped),
        WalletScreen(layoutChange: _onItemTapped),
      ].elementAt(selectedPos),
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: bottomNavBarHeight,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, bottomNavBarHeight),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.5,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.mainColor,
                elevation: 0.1,
                child: const Icon(Icons.add),
              ),
            ),
            SizedBox(
              width: size.width,
              height: bottomNavBarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    child: selectedPos == 0
                        ? Image.asset(
                            'assets/img/Vector (2).png',
                            height: 30,
                          )
                        : Image.asset(
                            'assets/img/Vector.png',
                            height: 30,
                          ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: selectedPos == 3
                        ? Image.asset(
                            'assets/img/bar-chart 1.png',
                            height: 30,
                          )
                        : Image.asset(
                            'assets/img/bar-chart 1.png',
                            height: 30,
                          ),
                  ),
                  SizedBox(width: size.width * 0.15),
                  InkWell(
                    onTap: () {
                      _onItemTapped(1);
                    },
                    child: selectedPos == 1
                        ? Image.asset(
                            'assets/img/Vector (3).png',
                            height: 30,
                          )
                        : Image.asset(
                            'assets/img/Vector (1).png',
                            height: 30,
                          ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: selectedPos == 3
                        ? Image.asset(
                            'assets/img/user (1) 1.png',
                            height: 30,
                          )
                        : Image.asset(
                            'assets/img/user (1) 1.png',
                            height: 30,
                          ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
