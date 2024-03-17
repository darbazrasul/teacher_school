import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
Widget pText(String text,
        {Color? color,
        TextAlign? textAlign,
        double? fontSize,
        FontWeight? fontWeight,
        TextDirection? textDirection}) =>
    AutoSizeText(
      text,
      minFontSize: 2,
      textDirection: textDirection ?? TextDirection.ltr,
      textAlign: textAlign,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
