import 'package:flutter/material.dart';
import 'package:teacher_school/widgets/lessons_class.dart';

import 'package:teacher_school/widgets/announcement_class.dart';

import '../config/appTextStyle/app_text_style.dart';
import '../config/constants/app_colors.dart';

class MusicClass extends StatefulWidget {
  const MusicClass({super.key});

  @override
  State<MusicClass> createState() => _MusicClassState();
}

class _MusicClassState extends State<MusicClass> {
  void selected(index) {
    if (index == 0) {
      setState(() {
        isFirstTogle = !isFirstTogle;
        iSecondTogle = false;
      });
    } else {
      setState(() {
        iSecondTogle = !iSecondTogle;
        isFirstTogle = false;
      });
    }
  }

  bool isFirstTogle = true;
  bool iSecondTogle = false;
  int? xx;

  late double _deviceHeight;
  late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              SizedBox(
                height: _deviceHeight * 0.02,
              ),
              Text(
                "Music",
                style: AppTextStyle.regularTitle24,
              ),
              SizedBox(
                height: _deviceHeight * 0.01,
              ),
              Text(
                "Class 9-A ",
                style: AppTextStyle.regularTitle22,
              ),
              SizedBox(
                height: _deviceHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Flexible(
                      child: FractionallySizedBox(
                    widthFactor: 0.5,
                  )),
                  TextButton(
                    onPressed: () {
                      selected(0);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: _deviceWidth * 0.4,
                      height: _deviceHeight * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: isFirstTogle
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: _deviceWidth * 0.38,
                        height: _deviceHeight * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isFirstTogle
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                        ),
                        child: Text(
                          "Lessons",
                          style: AppTextStyle.semiBoldTitle22.copyWith(
                              color: isFirstTogle
                                  ? AppColors.blackColor
                                  : AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      selected(1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: _deviceWidth * 0.4,
                      height: _deviceHeight * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: iSecondTogle
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: _deviceWidth * 0.38,
                        height: _deviceHeight * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: iSecondTogle
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                        ),
                        child: Text(
                          "Anouncement",
                          style: AppTextStyle.semiBoldTitle22.copyWith(
                              overflow: TextOverflow.ellipsis,
                              color: iSecondTogle
                                  ? AppColors.blackColor
                                  : AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          toolbarHeight: 164,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        body: Container(
            padding: EdgeInsets.only(top: _deviceHeight * 0.02),
            child: iSecondTogle
                ? announcementClass(_deviceHeight, _deviceWidth)
                : lessonsClass(_deviceWidth, _deviceHeight, () {})));
  }
}
