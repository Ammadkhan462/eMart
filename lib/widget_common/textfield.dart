import 'package:ecom/consts/consts.dart';
import 'package:ecom/views/auth_screen/login.dart';

Widget customfield({required String hint, required String title}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    title!.text.color(redColor).fontFamily(semibold).make(),
    5.heightBox,
    TextFormField(
      decoration: InputDecoration(
          hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
          hintText: hint,
          isDense: true,
          filled: true,
          fillColor: lightGrey,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          )),
    ),
    10.heightBox
  ]);
}
