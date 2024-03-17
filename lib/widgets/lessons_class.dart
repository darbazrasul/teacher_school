import 'package:flutter/material.dart';

import '../config/appIcons/app_icons.dart';
import '../config/appTextStyle/app_text_style.dart';
import '../config/constants/app_colors.dart';

Widget lessonsClass(double _deviceWidth, double _deviceHeight, onEdit) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      padding: const EdgeInsets.all(20),
      width: _deviceWidth,
      height: _deviceHeight * 0.32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lesson name",
                style: AppTextStyle.semiBoldTitle16,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: onEdit,
                    icon: getAppIcon(
                        icon: Icons.mode,
                        color: AppColors.greenColor,
                        size: 26),
                  ),
                  IconButton(
                    onPressed: () {
                      print("remove lessons");
                    },
                    icon: getAppIcon(
                      icon: Icons.delete,
                      color: AppColors.redColor,
                      size: 26,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "okoko",
            style: AppTextStyle.boldTitle20,
          ),
          SizedBox(
            height: _deviceHeight * 0.033,
          ),
          Text(
            "Lesson description",
            style: AppTextStyle.semiBoldTitle16,
          ),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          Text(
            "In this lesson we will learn some\nhardcore stuff",
            style: AppTextStyle.boldTitle20
                .copyWith(overflow: TextOverflow.ellipsis),
            textAlign: TextAlign.start,
          )
        ],
      ),
    ),
  );
}
