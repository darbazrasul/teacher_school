import 'package:flutter/material.dart';
import 'package:teacher_school/screens/home_screen.dart';
import 'package:teacher_school/screens/profile_screen.dart';
import 'package:teacher_school/screens/settings_screen.dart';
import 'package:teacher_school/screens/take_attendance_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int? currentIndex;
  late double _deviceHeight;
  late double _deviceWidth;

  List screen = [
    const HomeScreen(),
    const TakeAttendanceScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changeScreen(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: Center(
        child: screen.elementAt(currentIndex!),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: 75.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 1.0),
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: IconButton(
              onPressed: () {
                //TODO: home is pressed
                print('home is pressed');
                changeScreen(0);
              },
              icon: const Icon(
                Icons.home_outlined,
                size: 32,
              ),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {
                //TODO: caleder  is pressed
                print('calender is pressed');
                changeScreen(1);
              },
              icon: const Icon(
                Icons.calendar_month_outlined,
                size: 28,
              ),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {
                //TODO: person is pressed
                print('person is pressed');
                changeScreen(2);
              },
              icon: const Icon(
                Icons.person_outline,
                size: 30,
              ),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {
                //TODO: setting is pressed
                print('setting is pressed');
                changeScreen(3);
              },
              icon: const Icon(
                Icons.settings_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
