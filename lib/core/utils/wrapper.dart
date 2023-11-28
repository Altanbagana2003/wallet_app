import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/onboarding/intro_screen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  // Splash cooldown
  int splashCooldown = 3;
  bool showSplash = true;
  late Timer timer;

  // States
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  bool isLoading = true;
  bool hasWifi = true;

  @override
  void initState() {
    super.initState();

    splashCooldownStart();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (showSplash) {
      return const SplashScreen();
    } else {
      return const OnboardingScreen();
    }
  }

  splashCooldownStart() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        splashCooldown--;
      });
      if (splashCooldown == 0) {
        setState(() {
          showSplash = false;
        });
        timer.cancel();
      }
    });
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF63B5AF), Color(0xFF438883)],
        )),
        child: const Center(
          child: Text(
            "Сайн уу?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
