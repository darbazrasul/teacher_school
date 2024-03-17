// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';

import 'package:teacher_school/widgets/students.dart';
import 'package:teacher_school/widgets/subjects.dart';

class SpecialClass extends StatefulWidget {
  const SpecialClass({Key? key}) : super(key: key);

  @override
  State<SpecialClass> createState() => _SpecialClassState();
}

class _SpecialClassState extends State<SpecialClass> {
  void selected(index) {
    if (index == 0) {
      setState(() {
        isStudentTogle = !isStudentTogle;
        iSubjectTogle = false;
      });
    } else {
      setState(() {
        iSubjectTogle = !iSubjectTogle;
        isStudentTogle = false;
      });
    }
  }

  bool isStudentTogle = true;
  bool iSubjectTogle = false;
  int? xx;

  late double _deviceHeight;
  late double _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Class 5 - A',
              style: AppTextStyle.regularTitle22,
            ),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: _deviceWidth * 0.02,
                ),
                TextButton(
                  onPressed: () {
                    selected(0);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: _deviceWidth * 0.32,
                    height: _deviceHeight * 0.08,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isStudentTogle
                            ? AppColors.whiteColor
                            : AppColors.primaryColor,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: _deviceWidth * 0.3,
                      height: _deviceHeight * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: isStudentTogle
                            ? AppColors.whiteColor
                            : AppColors.primaryColor,
                      ),
                      child: Text(
                        "Students",
                        style: AppTextStyle.semiBoldTitle22.copyWith(
                            fontSize: 16.sp,
                            color: isStudentTogle
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
                    width: _deviceWidth * 0.32,
                    height: _deviceHeight * 0.08,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: iSubjectTogle
                            ? AppColors.whiteColor
                            : AppColors.primaryColor,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: _deviceWidth * 0.3,
                      height: _deviceHeight * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: iSubjectTogle
                            ? AppColors.whiteColor
                            : AppColors.primaryColor,
                      ),
                      child: Text(
                        "Subjects",
                        style: AppTextStyle.semiBoldTitle22.copyWith(
                            fontSize: 16.sp,
                            overflow: TextOverflow.ellipsis,
                            color: iSubjectTogle
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
        toolbarHeight: 160,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Container(
          padding: EdgeInsets.only(top: _deviceHeight * 0.02),
          width: _deviceWidth,
          height: _deviceHeight,
          child: isStudentTogle
              ? studentName(_deviceWidth, _deviceHeight)
              : ClassName(_deviceWidth, _deviceHeight)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/takeAttendanceScreen');
        },
        child: Container(
          width: _deviceWidth * 0.4,
          height: _deviceHeight * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColor),
          child: const Align(
              alignment: Alignment(0, 0),
              child: Icon(Icons.calendar_month_outlined)),
        ),
      ),
    );
  }
}
