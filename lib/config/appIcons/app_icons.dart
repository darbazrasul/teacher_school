import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

SvgPicture getSvgImage(
    {required String asset, Color? color, double size = 40}) {
  return SvgPicture.asset(
    asset,
    color: color,
    width: size,
    height: size,
    fit: BoxFit.contain,
  );
}

SvgPicture getSvgImagev2(
    {required String asset,
    Color? color,
    double widthSize = 40,
    double heightSize = 40}) {
  return SvgPicture.asset(
    asset,
    color: color,
    width: widthSize,
    height: heightSize,
    fit: BoxFit.contain,
  );
}

Icon getAppIcon({required IconData icon, Color? color, double size = 36}) {
  return Icon(
    icon,
    color: color,
    size: size,
  );
}

class AppIcons {
  static const String splashLogo = "assets/logos/YonaLogo.png";
  static const String studyImage = 'assets/images/studyImage.svg';
  static const String computerImage = 'assets/images/computer.png';
  static const String holidays = 'assets/icons/holidays.png';
  static const String topics = 'assets/icons/topics.png';
  static const String announcement = 'assets/icons/announcement.png';
  static const String assignments = 'assets/icons/assignments.png';
  static const String lessons = 'assets/icons/lessons.png';
}
