import 'package:flutter/material.dart';
import 'package:skyvin/constans/sky_text_style.dart';
import '../../constans/sky_colors.dart';
import '../../constans/sky_img_src.dart';

class SkyMainScreen extends StatelessWidget {
  const SkyMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: SkyColors.colorLightGrey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                SkyImgSrc.logoMin,
                fit: BoxFit.fitWidth,
                width: 45,
              ),
              Material(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xff39A2DD),
                child: InkWell(
                  borderRadius: BorderRadius.circular(3),
                  highlightColor: SkyColors.colorBlue.withOpacity(0.7),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: const Text(
                      'Добавить авто',
                      style: SkyTextStyle.fontSize16W600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    print('Добавить авто');
                  },
                ),
              ),
              InkWell(
                child: Image.asset(
                  SkyImgSrc.iconAlert,
                  width: 27,
                ),
              ),
              InkWell(
                child: Icon(Icons.menu, color: Color(0xff39A2DD)),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      'Авто',
                      style: SkyTextStyle.fontSize32,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    color: Color(0xffF2F2F2),
                    child: Text('27-01-2022'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    color: Color(0xffffffff),
                    child: Text('27-01-2022'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    color: Color(0xffF2F2F2),
                    child: Text('27-01-2022'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    color: Color(0xffffffff),
                    child: Text('27-01-2022'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
