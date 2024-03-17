import 'package:flutter/material.dart';

Widget appButton(
    {required void Function() onPressed,
    required Color color,
    required String title,
    required double width,
    double radius = 10,
    context}) {
  return Container(
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(radius)),
    width: MediaQuery.of(context).size.width * width,
    height: 50,
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
