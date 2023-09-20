import 'package:ecom/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/listicon.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/login_button.dart';
import '../../widget_common/textfield.dart';
import '../../widgets/app_logo_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? ischeck = false;

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
                customfield(title: name, hint: emailhint),
                customfield(title: email, hint: emailhint),
                customfield(title: password, hint: passwordhint),
                customfield(title: retypepass, hint: passwordhint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                10.heightBox,
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: ischeck,
                      onChanged: (value) {
                        setState(() {
                          ischeck = value;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agrree to the ",
                            style:
                                TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(
                            text: privacy,
                            style:
                                TextStyle(fontFamily: bold, color: redColor)),
                        TextSpan(
                            text: " & ",
                            style:
                                TextStyle(fontFamily: bold, color: redColor)),
                        TextSpan(
                            text: term,
                            style: TextStyle(fontFamily: bold, color: redColor))
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                Login_buttn(
                  onppress: () {},
                  color: ischeck == true ? redColor : lightGrey,
                  textcolor: whiteColor,
                  title: signup, // Wrap 'login' in a Text widget
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "alreay have an account ? ",
                            style:
                                TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(
                            text: login,
                            style:
                                TextStyle(fontFamily: bold, color: redColor)),
                      ])).onTap(() {
                        Get.back();
                      }),
                    )
                  ],
                )
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
