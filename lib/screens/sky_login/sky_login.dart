import 'package:flutter/material.dart';
import 'package:skyvin/constans/sky_img_src.dart';
import 'package:skyvin/constans/sky_text_style.dart';
import 'package:skyvin/screens/sky_login/widgets/sky_login_form.dart';
import 'package:skyvin/screens/sky_login/widgets/sky_registration_form.dart';

import '../../constans/sky_colors.dart';

class SkyLogin extends StatefulWidget {
  SkyLogin({Key? key}) : super(key: key);

  @override
  State<SkyLogin> createState() => _SkyLoginState();
}

class _SkyLoginState extends State<SkyLogin>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        print(tabController.index);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: SkyColors.colorLightGrey,
          appBar: AppBar(
            backgroundColor: Colors.white,
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
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                  color: Color(0xffF9F9F9),
                  child: TabBar(
                      unselectedLabelColor: Colors.black,
                      controller: tabController,
                      labelColor: SkyColors.colorBlue,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.16),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      tabs: const [
                        Tab(
                          child: Text(
                            'Авторизация',
                            style: SkyTextStyle.fontSize18Normal,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Регистрация',
                            style: SkyTextStyle.fontSize18Normal,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 360,
                  child: TabBarView(
                      controller: tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        SkyLoginForm(),
                        SkyRegistrationForm(),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
