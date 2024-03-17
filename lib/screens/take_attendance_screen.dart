import 'package:flutter/material.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';

class TakeAttendanceScreen extends StatefulWidget {
  const TakeAttendanceScreen({Key? key}) : super(key: key);

  @override
  State<TakeAttendanceScreen> createState() => _TakeAttendanceScreenState();
}

class _TakeAttendanceScreenState extends State<TakeAttendanceScreen> {
  late double _deviceHeight;
  late double _deviceWidth;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        print('picked date is : $picked');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Take Attendance'),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.calendar_month_outlined,
                ),
                Text('5-8-2022')
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                //TODO Search Attendance taped,
                print('Search Attendance taped,');
              },
              icon: const Icon(
                Icons.search_outlined,
                size: 35.0,
              ),
            ),
          ),
        ],
        centerTitle: true,
        toolbarHeight: 120.0,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor, // <-- SEE HERE
            onPrimary: AppColors.whiteColor, // <-- SEE HERE
            onSurface: AppColors.primaryColor, // <-- SEE HERE
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryColor, // button text color
            ),
          ),
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return listTile(
                imgPath: 'assets/images/computer.png',
                name: 'Yunis',
                rollNomber: index,
                isPresent: true,
                onTap: () {});
          },
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
            vertical: 15.0, horizontal: _deviceWidth * 0.2),
        height: 65.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 1.0),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: AppColors.primaryColor,
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: InkWell(
            onTap: () async {
              //TODO submet button is taped,
              print('submet button is taped,');
              await _selectDate(context);
            },
            child: Center(
              child: Text(
                'Submit',
                style: AppTextStyle.boldTitle18
                    .copyWith(color: AppColors.whiteColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///List Tile
  Widget listTile({
    required String imgPath,
    required String name,
    required int rollNomber,
    required bool isPresent,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
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
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.primaryColor.withOpacity(0.7),
                ),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.semiBoldTitle18
                        .copyWith(color: AppColors.blackColor),
                  ),
                  Text(
                    name,
                    style: AppTextStyle.semiBoldTitle14
                        .copyWith(color: AppColors.greyBoldColor),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:
                        isPresent ? AppColors.primaryColor : AppColors.redColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    isPresent ? 'Present' : 'Absent',
                    style: AppTextStyle.semiBoldTitle14
                        .copyWith(color: AppColors.whiteColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
