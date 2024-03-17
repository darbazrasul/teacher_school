import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/widgets/app_button.dart';
import 'package:teacher_school/widgets/appbar_widget.dart';
import 'package:teacher_school/widgets/forms/dropdown_textformfield.dart';
import 'package:teacher_school/widgets/forms/textformfield_widget.dart';

import '../../widgets/textapp_widget.dart';

class AddAnnouncementScreen extends StatefulWidget {
  const AddAnnouncementScreen({Key? key}) : super(key: key);

  @override
  State<AddAnnouncementScreen> createState() => _AddAnnouncementScreenState();
}

class _AddAnnouncementScreenState extends State<AddAnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pAppbar(
        context,
        title: 'Add annoucment',
        bgColor: AppColors.primaryColor,
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        leadingOnPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 10,
            ),
            const SizedBox(height: 20),
            const CustomDropDown(
              items: [
                'A',
                'B',
                'C',
              ],
              hint: 'chose class',
            ),
            const SizedBox(height: 20),
            const CustomDropDown(
              items: [
                'Drawing',
                'Computer',
                'Math',
              ],
              hint: 'chose lesson',
            ),
            const SizedBox(height: 20),
            customTextFormField(
                context: context,
                controller: null,
                hint: 'Assignment Name',
                width: 0.9),
            const SizedBox(height: 20),
            customTextFormField(
              context: context,
              controller: null,
              hint: 'Instruction',
              maxLines: 2,
              width: 0.9,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: InkWell(
                onTap: () {
                  // add attachment
                  print('attachment');
                },
                child: DottedBorder(
                  dashPattern: const [10, 5, 10, 5, 10, 5],
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey.shade400,
                  strokeWidth: .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      pText('Attachment(s)', fontSize: 16),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            appButton(
              onPressed: () {},
              color: AppColors.primaryColor,
              title: 'Add annoucment',
              width: 0.8,
              context: context,
            )
          ],
        ),
      ),
    );
  }
}
