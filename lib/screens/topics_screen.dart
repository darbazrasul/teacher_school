import 'package:flutter/material.dart';
import 'package:teacher_school/config/appIcons/app_icons.dart';
import 'package:teacher_school/config/appTextStyle/app_text_style.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/main.dart';
import 'dart:io' show Platform;

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        title: const Text('Topics'),
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
        width: _screenSize.width,
        height: _screenSize.height,
        child: Column(
          children: [
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

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: DropDownListApp(
                hintText: 'Select Topic',
                items: subjects,
              ),
            ),

            Flexible(
              child: FractionallySizedBox(
                alignment: Alignment.center,
                heightFactor: _screenSize.height * 0.001,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getSvgImagev2(
                      asset: 'assets/images/topicImage.svg',
                      widthSize: Platform.isAndroid || Platform.isIOS
                          ? _screenSize.width * 0.37
                          : _screenSize.width * 0.4,
                      heightSize: Platform.isAndroid || Platform.isIOS
                          ? _screenSize.width * 0.37
                          : _screenSize.height * 0.2,
                    ),
                    SizedBox(
                      height: _screenSize.height * 0.03,
                    ),
                    Text(
                      'No topics',
                      style: AppTextStyle.semiBoldTitle18,
                    ),
                  ],
                ),
              ),
            ),

            /// List of assinments
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: const ClampingScrollPhysics(),
            //   itemCount: 5,
            //   itemBuilder: (context, index) {
            //     return const Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO add Topic
          Navigator.of(context).pushNamed('/addTopicScreen');
        },
        backgroundColor: AppColors.primaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
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
