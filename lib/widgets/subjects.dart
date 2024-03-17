import 'package:flutter/material.dart';

import '../config/appIcons/app_icons.dart';
import '../config/appTextStyle/app_text_style.dart';
import '../config/constants/app_colors.dart';
import '../main.dart';

Widget ClassName(double _deviceWidth, double _deviceHeight) {
  return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            //TODo
            print("Which subject do you want");
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.center,
              width: _deviceWidth * 0.9,
              height: _deviceHeight * 0.1,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.08,
                ),
              ),
              child: ListTile(
                leading: Container(
                  width: _deviceWidth * 0.19,
                  height: _deviceHeight * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: generatedColor[index],
                  ),
                  child: getAppIcon(
                      icon: generatedIconv2[index],
                      color: AppColors.whiteColor),
                ),
                title: Text(
                  subjects[index],
                  style: AppTextStyle.boldTitle22,
                ),
              ),
            ),
          ),
        );
      });
}
