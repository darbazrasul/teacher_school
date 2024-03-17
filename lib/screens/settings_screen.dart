import 'package:flutter/material.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final String _appVersion = '1.0.0';

  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: const Text('Settings'),
        centerTitle: true,
        toolbarHeight: 100.0,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15.0),
              customListTile(
                title: 'App Language',
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                titleSpace: 20.0,
                icon: const Icon(
                  Icons.language,
                  size: 30.0,
                ),
              ),
              const Divider(height: 25.0, thickness: 1),
              customListTile(
                title: 'English',
                onTap: () {
                  //TODO Change Language
                  print('Change Language');
                },
              ),
              customListTile(
                title: 'More',
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                titleSpace: 20.0,
                icon: const Icon(
                  Icons.menu,
                  size: 30.0,
                ),
              ),
              const Divider(height: 25.0, thickness: 1),
              customListTile(
                title: 'Change Passowrd',
                onTap: () {
                  //TODO Change Passowrd
                  print('Change Passowrd');
                },
              ),
              customListTile(
                title: 'Privacy Policy',
                onTap: () {
                  //TODO Privacy Policy
                  print('Privacy Policy');
                },
              ),
              customListTile(
                title: 'Terms & Condition',
                onTap: () {
                  //TODO Terms & Condition
                  print('Terms & Condition');
                },
              ),
              customListTile(
                title: 'About Us',
                onTap: () {
                  //TODO About Us
                  print('About Us');
                },
              ),
              customListTile(
                title: 'Contact Us',
                onTap: () {
                  //TODO Contact Us
                  print('Contact Us');
                },
              ),
              customListTile(
                title: 'Rate Us',
                onTap: () {
                  //TODO Rate Us
                  print('Rate Us');
                },
              ),
              customListTile(
                title: 'Share',
                onTap: () {
                  //TODO Share
                  print('Share');
                },
              ),
              const SizedBox(height: 15.0),
              Center(
                child: InkWell(
                  onTap: () {
                    //TODO Log out
                    print('Log out is pressed');
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 4.0,
                            title: Text('Are you sure to logout?'),
                            actions: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Yes',
                                    style: AppTextStyle.semiBoldTitle16,
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: AppTextStyle.semiBoldTitle16,
                                  )),
                            ],
                          );
                        });
                  },
                  child: Container(
                    width: _screenSize.width * 0.5,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: AppColors.whiteColor,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          'Log out',
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(child: Text('App Version $_appVersion')),
            ],
          ),
        ),
      ]),
      //  bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  ///Custom ListTile
  Widget customListTile({
    required String title,
    Icon? icon,
    Color? color,
    TextStyle? textStyle,
    double? height,
    double? width,
    double? titleSpace,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: height ?? 45.0,
        width: width ?? double.infinity,
        color: color,
        child: Row(
          children: [
            if (icon != null) icon,
            if (icon != null) SizedBox(width: titleSpace ?? 10.0),
            Text(
              title,
              style: textStyle,
            ),
            const Spacer(),
            if (onTap != null)
              const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
          ],
        ),
      ),
    );
  }
}
