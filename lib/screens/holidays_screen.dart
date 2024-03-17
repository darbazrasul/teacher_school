import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'dart:io' show Platform;

import 'package:teacher_school/config/constants/app_colors.dart';

class HolidaysScreen extends StatefulWidget {
  const HolidaysScreen({Key? key}) : super(key: key);

  @override
  State<HolidaysScreen> createState() => _HolidaysScreenState();
}

class _HolidaysScreenState extends State<HolidaysScreen> {
  late Size _screenSize;
  late String today;

  @override
  void initState() {
    var date = DateTime.now();
    //today = DateFormat('EEEE').format(date);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: const Text('Holidays'),
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
      body: SizedBox(
        height: _screenSize.height,
        width: _screenSize.width,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              //calendar
              calendar(),
              //the event results of selected date
              resultsList(),
            ],
          ),
        ),
      ),
    );
  }

  ///calender
  Widget calendar() {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        // width: _screenSize.width / 1.4 < 500 ? _screenSize.width : 350,
        //height: _screenSize.width / 1.4 < 500 ? _screenSize.width / 1.4 : 260,

        width: _screenSize.width,
        height: Platform.isMacOS ||
                Platform.isLinux ||
                Platform.isWindows ||
                Platform.isFuchsia
            ? _screenSize.height * 1.1
            : _screenSize.height * 0.36,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Calendar(
          startOnMonday: false,
          weekDays: const ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
          eventsList: [
            NeatCleanCalendarEvent(
              'summary',
              startTime: DateTime.now(),
              endTime: DateTime.now(),
            )
          ],
          isExpandable: false,
          eventDoneColor: Colors.green,
          selectedColor: AppColors.primaryColor,
          selectedTodayColor: AppColors.primaryColor,
          todayColor: AppColors.primaryColor,
          eventColor: Colors.red,
          multiDayEndText: 'End',
          todayButtonText: today,
          isExpanded: true,
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          dayOfWeekStyle: AppTextStyle.boldTitle14.copyWith(
            color: AppColors.primaryColor,
          ),
          eventTileHeight: 0.0,
          hideBottomBar: true,
          hideTodayIcon: false,
          onDateSelected: (value) {
            //TODO on date selected

            setState(() {
              //today = DateFormat('EEEE').format(value);
            });
            //print('the ${DateFormat('EEEE').format(value)} is selected');
          },
        ),
      ),
    );
  }

  ///the event results of selected date TODO
  Widget resultsList() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.greyColor),
          child: ListTile(
            title: Text(
              'ListTile',
              style: AppTextStyle.boldTitle16,
            ),
            subtitle: const Text('Secondary text Tertiary text'),
            trailing: const Text('01-05-2022'),
          ),
        );
      },
    );
  }

  // ///next month button
  // Widget nextMonthButton(
  //     {required void Function() onPressed,
  //     required IconData icon,
  //     double radius = 10,
  //     context}) {
  //   return InkWell(
  //     onTap: onPressed,
  //     child: Container(
  //       alignment: Alignment.center,
  //       decoration: BoxDecoration(
  //         color: AppColors.primaryColor,
  //         borderRadius: BorderRadius.circular(radius),
  //       ),
  //       width: 35,
  //       height: 35,
  //       child: Icon(
  //         icon,
  //         color: AppColors.whiteColor,
  //       ),
  //     ),
  //   );
  // }
}
