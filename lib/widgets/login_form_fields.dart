import 'package:flutter/material.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';

Form loginFormFieldsS(
 GlobalKey formKey,
  TextEditingController usernameController,
  TextEditingController passwordController,
  double deviceHeight,
  double deviceWidth,
) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          controller: usernameController,
          validator: (val) {
            if (val!.isEmpty) {
              return 'Username should not be empty!';
            }
            return null;
          },
          decoration: InputDecoration(
            label: Text(
              'Username',
              style: AppTextStyle.semiBoldTitle16
                  .copyWith(color: AppColors.primaryColor),
            ),
            hintText: 'Type your username here',
            suffixIcon: getAppIcon(
              icon: Icons.person,
              color: AppColors.primaryColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: deviceWidth * 0.08,
            top: deviceHeight * 0.03,
          ),
        ),
        TextFormField(
          obscureText: true,
          controller: passwordController,
          validator: (val) {
            if (val!.isEmpty || val.length < 8) {
              return 'Invalid password!';
            }
            return null;
          },
          decoration: InputDecoration(
            label: Text(
              'Password',
              style: AppTextStyle.semiBoldTitle16
                  .copyWith(color: AppColors.primaryColor),
            ),
            hintText: 'Type your password here',
            suffixIcon: getAppIcon(
              icon: Icons.lock,
              color: AppColors.primaryColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Form loginFormFieldsP(
  GlobalKey formKey,
  TextEditingController usernameController,
  TextEditingController passwordController,
  double deviceHeight,
  double deviceWidth,
) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          controller: usernameController,
          validator: (val) {
            if (val!.isEmpty) {
              return 'Username should not be empty!';
            }
            return null;
          },
          decoration: InputDecoration(
            label: Text(
              'Username',
              style: AppTextStyle.semiBoldTitle16
                  .copyWith(color: AppColors.primaryColor),
            ),
            hintText: 'Type your username here',
            suffixIcon: getAppIcon(
              icon: Icons.person,
              color: AppColors.primaryColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        Container(
          //width: _deviceWidth * 0.85,
          // height: _deviceHeight * 0.3,
          margin: EdgeInsets.only(
            left: deviceWidth * 0.08,
            top: deviceHeight * 0.03,
          ),
        ),
        TextFormField(
          obscureText: true,
          controller: passwordController,
          validator: (val) {
            if (val!.isEmpty || val.length < 8) {
              return 'Invalid password!';
            }
            return null;
          },
          decoration: InputDecoration(
            label: Text(
              'Password',
              style: AppTextStyle.semiBoldTitle16
                  .copyWith(color: AppColors.primaryColor),
            ),
            hintText: 'Type your password here',
            suffixIcon: getAppIcon(
              icon: Icons.lock,
              color: AppColors.primaryColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
