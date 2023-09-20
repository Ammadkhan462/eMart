import 'package:ecom/consts/consts.dart';

Widget Login_buttn(
    {VoidCallback? onppress, Color? color, Color? textcolor, String? title}) {
  return ElevatedButton(
    style:
        ElevatedButton.styleFrom(primary: color, padding: EdgeInsets.all(12)),
    onPressed: onppress,
    child: title?.text.fontFamily(bold).color(textcolor).make(),
  );
}
