import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/screens/add_announcement_screen.dart';
import 'package:teacher_school/screens/add_lesson_screen.dart';
import 'package:teacher_school/screens/add_topic_screen.dart';
import 'package:teacher_school/screens/announcements_screen.dart';
import 'package:teacher_school/screens/assignments_screen.dart';
import 'package:teacher_school/screens/base_screen.dart';
import 'package:teacher_school/screens/create_assignment_screen.dart';
import 'package:teacher_school/screens/edit_assignment_screen.dart';
import 'package:teacher_school/screens/edit_lesson_screen.dart';
import 'package:teacher_school/screens/holidays_screen.dart';
import 'package:teacher_school/screens/home_screen.dart';
import 'package:teacher_school/screens/music_class.dart';
import 'package:teacher_school/screens/profile_screen.dart';
import 'package:teacher_school/screens/settings_screen.dart';
import 'package:teacher_school/screens/special_class.dart';
import 'package:teacher_school/screens/student_details.dart';
import 'package:teacher_school/screens/take_attendance_screen.dart';
import 'package:teacher_school/screens/teacher_login_screen.dart';
import 'package:teacher_school/screens/topics_screen.dart';

import 'screens/lessons_screen.dart';

List<Color> generatedColor = [
  AppColors.greenColor,
  AppColors.greyBoldColor,
  AppColors.pinkColor,
  AppColors.blueLightColor,
  AppColors.orangeDeepColor,
  AppColors.purpleColor,
  AppColors.redColor,
  AppColors.blackColor,
  AppColors.blueColor,
];

List<String> studentImage = [
  "assets/images/Student1.png",
  "assets/images/Student2.png",
  "assets/images/Student3.png",
  "assets/images/Student4.png",
];
List<String> subjects = [
  "Music",
  "Drawing",
  "Maths",
  "Account",
  "English",
  "Computer",
];

List<String> catalogInfo = [
  "Assignments",
  "Announcements",
  "Lessons",
  "Topics",
  "Holidays",
];
List<String> generatedIcon = [
  AppIcons.assignments,
  AppIcons.announcement,
  AppIcons.lessons,
  AppIcons.topics,
  AppIcons.holidays
];
List<IconData> generatedIconv2 = [
  Icons.add,
  Icons.summarize,
  Icons.energy_savings_leaf,
  Icons.medical_information,
  Icons.plagiarism,
  Icons.arrow_circle_down,
  Icons.file_copy,
  Icons.file_open_outlined,
  Icons.developer_board,
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int interval = 300;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          title: 'Yona School Management',
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            fontFamily: 'Roboto',
          ),
          debugShowCheckedModeBanner: false,
          // home: const SplashScreen(),

          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/settingsScreen':
                return PageTransition(
                  child: const SettingsScreen(),
                  type: PageTransitionType.fade,
                );
              case '/takeAttendanceScreen':
                return PageTransition(
                  child: const TakeAttendanceScreen(),
                  type: PageTransitionType.fade,
                );
              case '/profileScreen':
                return PageTransition(
                  child: const ProfileScreen(),
                  type: PageTransitionType.fade,
                );
              case '/holidayScreen':
                return PageTransition(
                  child: const HolidaysScreen(),
                  type: PageTransitionType.fade,
                );
              case '/assignmentsScreen':
                return PageTransition(
                  child: const AssignmentsScreen(),
                  type: PageTransitionType.fade,
                );
              case '/specialClassScreen':
                return PageTransition(
                  child: const SpecialClass(),
                  type: PageTransitionType.fade,
                );
              case '/studentDetailsScreen':
                return PageTransition(
                  child: const StudentDetails(),
                  type: PageTransitionType.fade,
                );
              case '/musicClassScreen':
                return PageTransition(
                  child: const MusicClass(),
                  type: PageTransitionType.fade,
                );
              case '/lessonsScreen':
                return PageTransition(
                  child: const LessonsScreen(),
                  type: PageTransitionType.fade,
                );
              case '/announcementsScreen':
                return PageTransition(
                  child: const AnnouncementsScreen(),
                  type: PageTransitionType.fade,
                );
              case '/topicsScreen':
                return PageTransition(
                  child: const TopicsScreen(),
                  type: PageTransitionType.fade,
                );
              case '/addAnnouncementScreen':
                return PageTransition(
                  child: const AddAnnouncementScreen(),
                  type: PageTransitionType.fade,
                );
              case '/addLessonScreen':
                return PageTransition(
                  child: const AddLessonScreen(),
                  type: PageTransitionType.fade,
                );
              case '/addTopicScreen':
                return PageTransition(
                  child: const AddTopicScreen(),
                  type: PageTransitionType.fade,
                );
              case '/createAssignmentScreen':
                return PageTransition(
                  child: const CreateAssignmentScreen(),
                  type: PageTransitionType.fade,
                );
              case '/editAssignmentScreen':
                return PageTransition(
                  child: const EditAssignmentScreen(),
                  type: PageTransitionType.fade,
                );
              case '/editLessonScreen':
                return PageTransition(
                  child: const EditLessonScreen(),
                  type: PageTransitionType.fade,
                );
              case '/teacherLoginScreen':
                return PageTransition(
                  child: const TeacherLoginScreen(),
                  type: PageTransitionType.fade,
                );
              case '/baseScreen':
                return PageTransition(
                  child: const BaseScreen(),
                  type: PageTransitionType.fade,
                );
              default:
                return PageTransition(
                  child: const TeacherLoginScreen(),
                  type: PageTransitionType.fade,
                );
            }
          },
        );
      },
    );
  }
}
