import 'package:ecom/consts/consts.dart';
import 'package:ecom/consts/listicon.dart';
import 'package:ecom/views/auth_screen/signup.dart';
import 'package:ecom/widget_common/bg_widget.dart';
import 'package:ecom/widget_common/login_button.dart';
import 'package:ecom/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

import 'package:ecom/widget_common/textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget_common/textfield.dart';
import '../Homedscreen/homescreen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: Column(children: <Widget>[
              (context.screenHeight * 0.1).heightBox,
              aplogowidget(),
              10.heightBox,
              "Login into $appname".text.fontFamily(bold).white.size(22).make(),
              Column(children: [
                customfield(title: email, hint: emailhint),
                customfield(title: password, hint: passwordhint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                Login_buttn(
                  onppress: () {
                    Get.to(
                      () => HomeScreen(),
                    );
                  },
                  color: redColor,
                  textcolor: whiteColor,
                  title: login, // Wrap 'login' in a Text widget
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                creatmew.text.color(fontGrey).make(),
                5.heightBox,
                Login_buttn(
                        onppress: () {
                          Get.to(
                            () => const Signup(),
                          );
                        },
                        color: lightG01den,
                        textcolor: redColor,
                        title: signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialList[index],
                                  width: 30,
                                ),
                              ),
                            )))
              ])
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(10))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ]))));
  }
}
