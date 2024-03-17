import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'dart:io' show Platform;

import '../config/appTextStyle/app_text_style.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  late double _deviceHeight;
  late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Student details", style: AppTextStyle.boldTitle18),
        toolbarHeight: 140,
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35))),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              //TODO
              print("back to privious page");
            },
            icon: getAppIcon(icon: Icons.arrow_back_ios_new_outlined)),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: _deviceWidth,
        height: _deviceHeight,
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              width: _deviceWidth * 0.1,
              height: Platform.isIOS || Platform.isAndroid
                  ? _deviceHeight * 0.2
                  : _deviceHeight * 0.28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.greyColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/Student1.png"),
                      ),
                      Flexible(
                        child: SizedBox(
                          width: _deviceWidth * 0.04,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Student name",
                            style: AppTextStyle.boldTitle18
                                .copyWith(overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: _deviceHeight * 0.01,
                          ),
                          Row(
                            children: [
                              Wrap(
                                runSpacing: 1.0,
                                spacing: 2,
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    "Roll No : 12",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Class    : 9-A",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Dob    : 12-12-199 ",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Address    : brazil",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                runSpacing: 1.0,
                                spacing: 2,
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    "Gender :   male",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Blood_    : O+",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "GR No   :_",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              width: _deviceWidth,
              height: Platform.isIOS || Platform.isAndroid
                  ? _deviceHeight * 0.2
                  : _deviceHeight * 0.28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.greyColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/Student1.png"),
                      ),
                      Flexible(
                        child: SizedBox(
                          width: _deviceWidth * 0.04,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Parent name",
                            style: AppTextStyle.boldTitle18
                                .copyWith(overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: _deviceHeight * 0.01,
                          ),
                          Row(
                            children: [
                              Wrap(
                                runSpacing: 1.0,
                                spacing: 2,
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    "Roll No : 12",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Class    : 9-A",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Dob    : 12-12-199 ",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Address    : brazil",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                runSpacing: 1.0,
                                spacing: 2,
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    "Gender :   male",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "Blood_    : O+",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "GR No   :_",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: AppTextStyle.regularTitle16.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            Container(
                padding: const EdgeInsets.all(30.0),
                width: _deviceWidth * 0.1,
                height: _deviceHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.greyColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Today's attendance ",
                          style: AppTextStyle.semiBoldTitle22.copyWith(
                            fontSize: 12.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            ".Present",
                            style: AppTextStyle.regularTitle20.copyWith(
                              color: AppColors.primaryColor,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: _deviceHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          width: _deviceWidth * 0.3,
                          height: _deviceHeight * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: AppColors.primaryColor, width: 2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Present",
                                style: AppTextStyle.regularTitle16.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 10.sp),
                              ),
                              Text(
                                "4",
                                style: AppTextStyle.boldTitle16.copyWith(
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: SizedBox(
                            width: _deviceWidth * 0.07,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          width: _deviceWidth * 0.3,
                          height: _deviceHeight * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.primaryColor, width: 2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Absent",
                                style: AppTextStyle.regularTitle16
                                    .copyWith(fontSize: 10.sp),
                              ),
                              Text(
                                "0",
                                style: AppTextStyle.boldTitle16
                                    .copyWith(fontSize: 10.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
