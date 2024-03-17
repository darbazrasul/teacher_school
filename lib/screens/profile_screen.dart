import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: const Text('Profile'),
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            Platform.isMacOS ||
                    Platform.isLinux ||
                    Platform.isWindows ||
                    Platform.isFuchsia
                ? _screenSize.width * 0.08
                : _screenSize.width * 0.4,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: Platform.isMacOS ||
                          Platform.isLinux ||
                          Platform.isWindows ||
                          Platform.isFuchsia
                      ? _screenSize.width * 0.05
                      : _screenSize.width * 0.3,
                  width: Platform.isMacOS ||
                          Platform.isLinux ||
                          Platform.isWindows ||
                          Platform.isFuchsia
                      ? _screenSize.width * 0.05
                      : _screenSize.width * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppIcons.splashLogo),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Test Teacher',
                  style: AppTextStyle.boldTitle22.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Personal Details',
              style: AppTextStyle.semiBoldTitle16
                  .copyWith(color: AppColors.greyBoldColor),
            ),
          ),
          const SizedBox(height: 15.0),
          listTile(
            iconData: Icons.person_outline,
            title: 'Email',
            data: 'teacher@gmail.com',
            onTap: () {
              //TODO email taped
            },
          ),
          listTile(
            iconData: Icons.phone_outlined,
            title: 'Phone Number',
            data: '+9641234567',
            onTap: () {
              //TODO Phone Number taped
            },
          ),
          listTile(
            iconData: Icons.calendar_month_outlined,
            title: 'Date of Birth',
            data: '07-8-1995',
            onTap: () {
              //TODO Date of Birth taped
            },
          ),
          listTile(
            iconData: Icons.male_rounded,
            title: 'Gender',
            data: 'male',
            onTap: () {
              //TODO Gender taped
            },
          ),
          listTile(
            iconData: Icons.school_outlined,
            title: 'Qualification',
            data: 'M.C.A',
            onTap: () {
              //TODO Qualification taped
            },
          ),
          listTile(
            iconData: Icons.location_on_outlined,
            title: 'Location',
            data: 'Erbil',
            onTap: () {
              //TODO Location taped
            },
          ),
        ],
      ),
    );
  }

  ///List Tile
  Widget listTile({
    required IconData iconData,
    required String title,
    required String data,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: _screenSize.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: [
              Container(
                height: _screenSize.width * 0.15,
                width: _screenSize.width * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.primaryColor),
                child: Icon(
                  iconData,
                  color: AppColors.whiteColor,
                  size: _screenSize.width * 0.1,
                ),
              ),
              const SizedBox(width: 20.0),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.semiBoldTitle16
                          .copyWith(color: AppColors.greyBoldColor),
                    ),
                    Text(
                      data,
                      style: AppTextStyle.semiBoldTitle16
                          .copyWith(color: AppColors.greyBoldColor),
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
