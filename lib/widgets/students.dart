 import 'package:flutter/material.dart';
import 'package:teacher_school/main.dart';

import '../config/appTextStyle/app_text_style.dart';

Widget studentName(double _deviceWidth,double _deviceHeight) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {
            //TODO
            print("Student information");
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
                  child: Image.asset(studentImage.elementAt(index)),
                ),
                title: Text(
                  "Studnet $index",
                  style: AppTextStyle.boldTitle22,
                ),
                subtitle: Text(
                  "Roll No.-$index",
                  style: AppTextStyle.semiBoldTitle22,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }