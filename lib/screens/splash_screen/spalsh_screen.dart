import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:skyvin/constans/sky_colors.dart';
import 'package:skyvin/screens/sky_login/sky_login.dart';

import '../../../constans/sky_img_src.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SkyLogin(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: SkyColors.colorLightGrey,
        body: Center(
          child: Image.asset(
            SkyImgSrc.logo,
            width: 200,
          ),
        ),
      ),
    );
  }
}
