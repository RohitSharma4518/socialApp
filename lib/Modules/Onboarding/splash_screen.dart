import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social/Routes/app_routes.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navNewScreen();
    super.initState();
  }

  void navNewScreen() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AssetConstant.splashBgImg,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'i.click',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: ColorConstants.whiteColor,
                ),
              ),
              Image.asset(
                AssetConstant.splashPageImg,
                width: 445.4,
                height: 422.42,
              )
            ],
          ),
        ],
      ),
    );
  }
}
