import 'package:flutter/material.dart';

import '../../constans/sky_colors.dart';
import '../../constans/sky_img_src.dart';

class SkyAddCar extends StatelessWidget {
  const SkyAddCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: SkyColors.colorLightGrey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                SkyImgSrc.logo,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Добавление авто'),
        ),
      ),
    );
  }
}
