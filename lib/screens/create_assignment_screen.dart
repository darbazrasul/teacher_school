import 'package:flutter/material.dart';
import 'package:teacher_school/config/constants/app_colors.dart';
import 'package:teacher_school/widgets/appbar_widget.dart';
import 'package:teacher_school/widgets/forms/dropdown_textformfield.dart';
import 'package:teacher_school/widgets/forms/textformfield_widget.dart';

class CreateAssignmentScreen extends StatefulWidget {
  const CreateAssignmentScreen({Key? key}) : super(key: key);

  @override
  State<CreateAssignmentScreen> createState() => _CreateAssignmentScreenState();
}

class _CreateAssignmentScreenState extends State<CreateAssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pAppbar(
        context,
        title: 'Create Assignment',
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
                width: 0.9),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextFormField(
                    context: context,
                    controller: null,
                    hint: 'Due Date',
                    width: 0.43,
                    keyboardType: TextInputType.datetime,
                  ),
                  customTextFormField(
                    context: context,
                    controller: null,
                    hint: '00:00:00',
                    width: 0.43,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: false),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            customTextFormField(
              context: context,
              controller: null,
              hint: 'Points',
              width: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
