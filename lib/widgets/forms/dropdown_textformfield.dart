import 'package:flutter/material.dart';
import 'package:teacher_school/widgets/textapp_widget.dart';

class CustomDropDown extends StatefulWidget {
  final List<String>? items;
  final String? hint;

  const CustomDropDown({super.key, this.items, this.hint});

  @override
  State createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  // Declare a variable to store the selected value
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.0,
      width: MediaQuery.of(context).size.width * 0.90,
      child: DropdownButtonFormField(
        hint: pText(widget.hint!),
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        // Set the value to the selected value
        value: _selectedValue,
        // Create a list of dropdown items using the items parameter
        items: widget.items?.map((item) {
          return DropdownMenuItem(
            value: item,
            child: pText(item),
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
