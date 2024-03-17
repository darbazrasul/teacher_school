import 'package:flutter/material.dart';

Widget customTextFormField(
    {TextEditingController? controller,
    TextInputType? keyboardType,
    String? hint,
    int? maxLines,
    String? Function(String?)? validator,
    double? width,
    context}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width!,
    child: TextFormField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hint,
      ),
    ),
  );
}
