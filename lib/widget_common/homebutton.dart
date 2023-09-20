import 'package:ecom/consts/consts.dart';

Widget homebutton({width, height, icon, String? title, onpress}) {
  return Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.shadowSm.size(width, height).make());
}
