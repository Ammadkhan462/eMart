import 'package:ecom/consts/consts.dart';

Widget featuredbutton({String? title1, Images1}) {
  return Row(
    children: [
      Image.asset(Images1, width: 60, fit: BoxFit.fill),
      10.widthBox,
      title1!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .padding(EdgeInsets.all(4))
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 4, vertical: 2))
      .roundedSM
      .outerShadow
      .white
      .make();
}
