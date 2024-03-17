import 'package:flutter/material.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/main.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double _deviceHeight;
  late double _deviceWidth;

  List<String> routes = [
    '/assignmentsScreen',
    '/announcementsScreen',
    '/lessonsScreen',
    '/topicsScreen',
    '/holidayScreen',
  ];

  String className = '5 - A';

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'Mohammed Yousif',
                  style: AppTextStyle.boldTitle18,
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 140.0,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            // TODO
            print('show Profile');
          },
          child: Container(
            margin: EdgeInsets.only(left: _deviceWidth * 0.07),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppIcons.splashLogo),
                fit: BoxFit.contain,
              ),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        leadingWidth: _deviceWidth * 0.28,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: _deviceWidth * 0.07,
                top: _deviceHeight * 0.02,
              ),
              child: Text(
                'My Classes',
                style: AppTextStyle.boldTitle18,
              ),
            ),
            Container(
              width: _deviceWidth,
              height: _deviceHeight * 0.19,
              // color: Colors.red,
              child: classContainers(() {}),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _deviceWidth * 0.07,
                top: _deviceHeight * 0.02,
              ),
              child: Text(
                'Class Teacher',
                style: AppTextStyle.boldTitle18,
              ),
            ),
            SizedBox(
              width: _deviceWidth,
              height: _deviceHeight * 0.19,
              // color: Colors.red,
              child: classContainers(() {}),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _deviceWidth * 0.07,
                top: _deviceHeight * 0.02,
              ),
              child: Text(
                'Information',
                style: AppTextStyle.boldTitle18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: catalogInfo.length,
              itemBuilder: (BuildContext context, int index) {
                return listTile(
                    image: generatedIcon[index],
                    title: catalogInfo[index],
                    onTap: () {
                      Navigator.of(context).pushNamed(routes[index]);
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  ListView classContainers(onTap) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      //shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              width: _deviceWidth * 0.435,
              height: _deviceHeight * 0.13,
              margin: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                  color: generatedColor[index],
                  borderRadius: BorderRadius.circular(14.0)),
              alignment: Alignment.center,
              child: Text(
                className,
                style: AppTextStyle.boldTitle18.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              // left: 78,
              // right: 78,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/specialClassScreen');
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(34)),
                        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.0)),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.greyBoldColor.withOpacity(0.2),
                              blurRadius: 0.1,
                              spreadRadius: 2.6,
                              offset: const Offset(0, 1)),
                        ]),
                    child: getAppIcon(
                      icon: Icons.arrow_forward_ios_rounded,
                      size: 26,
                    )),
              ),
            ),
          ],
        );
      },
    );
  }

  ///List Tile
  Widget listTile({
    required String image,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: [
              Container(
                height: _deviceWidth * 0.15,
                width: _deviceWidth * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: AppColors.greenLightColor.withOpacity(0.7),
                ),
                child: Center(
                  child: Image.asset(
                    image,
                    color: AppColors.whiteColor,
                    width: _deviceWidth * 0.11,
                    height: _deviceWidth * 0.11,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              Text(
                title,
                style: AppTextStyle.semiBoldTitle18
                    .copyWith(color: AppColors.blackColor),
              ),
              const Spacer(),
              Container(
                width: 42,
                height: 42,
                margin: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44.0),
                  color: AppColors.blackColor,
                ),
                alignment: Alignment.center,
                child: getAppIcon(
                  icon: Icons.arrow_forward,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
