import 'package:ecom/consts/consts.dart';
import 'package:flutter/material.dart';

Widget bgwidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
        // Adjust the fit property as needed
      ),
    ),
    child: child,
  );
}
