import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecom/consts/consts.dart';
import 'package:ecom/views/auth_screen/login.dart'
    as AuthLogin; // Alias the import with 'as'
import 'package:ecom/widgets/app_logo_widget.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  //creating a method to change screen
  changescreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => AuthLogin.Login());
    });
  }

  @override
  void initState() {
    super.initState();
    changescreen();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: redColor,
        body: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                ),
              ),
              20.heightBox,
              aplogowidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).white.make(),
              10.heightBox,
              appversion.text.white.make(),
              const Spacer(),
              credits.text.white.fontFamily(semibold).make(),
              30.heightBox,
            ],
          ),
        ));
  }
}
