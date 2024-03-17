import 'package:flutter/material.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/main.dart';
import 'package:teacher_school/widgets/lessons_class.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({Key? key}) : super(key: key);

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: const Text('Lessons'),
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
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 20.0),
          //Class Dropdown
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: DropDownListApp(
              hintText: 'Select Class',
              items: ['8 - A', '3 - D', '7 - E', '3 - C'],
            ),
          ),
          //Drawing Dropdown
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: DropDownListApp(
              hintText: 'Select Subject',
              items: subjects,
            ),
          ),
          //List of assinments
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: lessonsClass(_screenSize.width, _screenSize.height, () {
                  Navigator.of(context).pushNamed('/editLessonScreen');
                }),
              );
            },
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO add Lesson
          print('add Lesson is pressed');
          Navigator.of(context).pushNamed('/addLessonScreen');
        },
        backgroundColor: AppColors.primaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }

  ///List Tile
  Widget listTile({
    required String title,
    required String date,
    required VoidCallback onEditTap,
    required VoidCallback onDeleteTap,
  }) {
    return Container(
      color: AppColors.whiteColor,
      width: _screenSize.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyle.semiBoldTitle18),
                const SizedBox(height: 5.0),
                Text(
                  'dueDate: $date',
                  style:
                      AppTextStyle.mediumTitle14.copyWith(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: onEditTap,
              icon: Icon(
                Icons.edit,
                color: AppColors.greenColor,
              ),
            ),
            IconButton(
              onPressed: onDeleteTap,
              icon: Icon(
                Icons.delete,
                color: AppColors.redColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropDownListApp extends StatefulWidget {
  final List<String>? items;
  final String hintText;

  const DropDownListApp({super.key, this.items, required this.hintText});

  @override
  State createState() => _DropDownListAppState();
}

class _DropDownListAppState extends State<DropDownListApp> {
  // Declare a variable to store the selected value
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 55.0,
      //MediaQuery.of(context).size.width * 0.85,
      width: double.infinity,
      child: DropdownButtonFormField(
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        // Set the value to the selected value
        value: _selectedValue,

        hint: Text(widget.hintText),
        // Create a list of dropdown items using the items parameter
        items: widget.items?.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        // Set the value of the selected item
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}
