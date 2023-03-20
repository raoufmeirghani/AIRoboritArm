import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'home.dart';
import 'SettingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/splash.png"),
      logoWidth: 270,
      durationInSeconds: 5,
      showLoader: true,
      backgroundColor: const Color(0xffA29779),
      navigator: SettingPage(),
    );
  }
}
