import 'package:flutter/material.dart';
import 'package:wallet_app/features/Home/name_card.dart';
import 'package:wallet_app/features/Home/top_section.dart';

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
        children: const [
          TopSection(),
          Text('ggg'),
        ],
      ),
    );
  }
}
