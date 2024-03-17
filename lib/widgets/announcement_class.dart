import 'package:flutter/material.dart';

import '../config/appIcons/app_icons.dart';
import '../config/appTextStyle/app_text_style.dart';
import '../config/constants/app_colors.dart';

Widget announcementClass(double _deviceHeight, double _deviceWidth) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(18),
      width: _deviceWidth,
      height: _deviceHeight * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Piano Perfect",
                style: AppTextStyle.boldTitle22,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      //TODO
                      print("edit announcement");
                    },
                    icon: getAppIcon(
                        icon: Icons.mode,
                        color: AppColors.greenColor,
                        size: 28),
                  ),
                  IconButton(
                    onPressed: () {
                      print("remove announcement");
                    },
                    icon: getAppIcon(
                        icon: Icons.delete,
                        color: AppColors.redColor,
                        size: 28),
                  ),
                ],
              )
            ],
          ),
          Text(
            "how to drive in my self and profile pic for the same as",
            style: AppTextStyle.semiBoldTitle20,
          ),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          Text("2 minutes ago", style: AppTextStyle.mediumTitle20),
        ],
      ),
    ),
  );
}
