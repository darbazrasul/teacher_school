import 'package:flutter/material.dart';
import 'package:teacher_school/config/constants/app_colors.dart';

SingleChildScrollView customCircleDesign(
    double deviceWidth, double deviceHeight,
    {required bool isParent}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Small ball
        Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.025, bottom: deviceHeight * 0.1),
          width: 80, //_deviceWidth * 0.2,
          height: 80, //_deviceHeight * 0.09,
          decoration: BoxDecoration(
            color: isParent
                ? AppColors.blueColor.withOpacity(0.5)
                : AppColors.greenColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(115),
          ),
        ),
        // Medium ball
        Container(
          margin: EdgeInsets.only(
            left: deviceWidth * 0.015,
            top: deviceHeight * 0.0,
          ),
          width: 120, //_deviceWidth * 0.28,
          height: 120, //_deviceHeight * 0.13,
          decoration: BoxDecoration(
            color: isParent
                ? AppColors.blueColor.withOpacity(0.7)
                : AppColors.greenColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(115),
          ),
        ),
        // Large ball
        Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.01, top: deviceHeight * 0.1),
          width: 200, //_deviceWidth * 0.4,
          height: 200, // _deviceHeight * 0.18,
          decoration: BoxDecoration(
            color: isParent ? AppColors.blueColor : AppColors.greenColor,
            borderRadius: BorderRadius.circular(115),
          ),
        ),
      ],
    ),
  );
}
