import 'package:flutter/material.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/widgets/custom_circle_design.dart';
import 'package:teacher_school/widgets/login_form_fields.dart';

class TeacherLoginScreen extends StatefulWidget {
  const TeacherLoginScreen({Key? key}) : super(key: key);

  @override
  State<TeacherLoginScreen> createState() => _TeacherLoginScreenState();
}

class _TeacherLoginScreenState extends State<TeacherLoginScreen> {
  late double _deviceHeight;
  late double _deviceWidth;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        color: AppColors.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Circle balls
              customCircleDesign(_deviceWidth, _deviceHeight, isParent: false),
              Container(
                margin: EdgeInsets.only(
                  left: _deviceWidth * 0.08,
                ),
                child: Text(
                  "Let's Login",
                  style: AppTextStyle.boldTitle34.copyWith(
                    color: AppColors.blackColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: _deviceWidth * 0.08,
                  top: _deviceHeight * 0.02,
                ),
                child: Text(
                  "Welcome Back, \nYou've been missed!",
                  style: AppTextStyle.semiBoldTitle22.copyWith(
                    color: AppColors.blackColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                width: _deviceWidth * 0.85,
                // height: _deviceHeight * 0.3,
                margin: EdgeInsets.only(
                  left: _deviceWidth * 0.08,
                  top: _deviceHeight * 0.06,
                ),
                child: loginFormFieldsS(
                  _formKey,
                  _usernameController,
                  _passwordController,
                  _deviceHeight,
                  _deviceWidth,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  right: _deviceWidth * 0.07,
                  top: _deviceHeight * 0.02,
                ),
                child: InkWell(
                  onTap: () {
                    // TODO
                    print('Reset password');
                  },
                  child: Text(
                    "Reset password?",
                    style: AppTextStyle.regularTitle14.copyWith(
                      color: AppColors.primaryColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: _deviceWidth * 0.1,
                  top: _deviceHeight * 0.05,
                ),
                child: TextButton(
                  onPressed: () {
                    // TODO
                    print('Login Student');

                    Navigator.of(context).pushNamed('/baseScreen');
                    // if (_formKey.currentState!.validate()) {
                    //   print('Logging in... ${_usernameController.text}');
                    // } else {
                    //   print('Error logging in...');
                    // }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all(AppColors.whiteColor),
                    minimumSize: MaterialStateProperty.all(
                      Size(_deviceWidth * 0.8, _deviceHeight * 0.07),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: AppTextStyle.semiBoldTitle24,
                  ),
                ),
              ),
              Container(
                width: _deviceWidth,
                margin: EdgeInsets.only(top: _deviceHeight * 0.03),
                child: Text(
                  'By logging in, you agree to our',
                  style: AppTextStyle.semiBoldTitle16.copyWith(
                    color: AppColors.blackColor,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _deviceHeight * 0.01),
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    InkWell(
                      onTap: () {
                        // TODO
                        print('Terms & Conditions');
                      },
                      child: Text(
                        'Terms & Conditions ',
                        style: AppTextStyle.semiBoldTitle16.copyWith(
                          color: AppColors.primaryColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Text(
                      '& ',
                      style: AppTextStyle.semiBoldTitle16.copyWith(
                        color: AppColors.blackColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // TODO
                        print('Privacy Policy');
                      },
                      child: Text(
                        'Privacy Policy',
                        style: AppTextStyle.semiBoldTitle16.copyWith(
                          color: AppColors.primaryColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
