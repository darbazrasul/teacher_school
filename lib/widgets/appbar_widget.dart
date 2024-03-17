import 'package:flutter/material.dart';
import 'package:teacher_school/widgets/textapp_widget.dart';

AppBar pAppbar(BuildContext context,
        {String title = '',
        Color? bgColor,
        IconData? actionIcon,
        IconData? leadingIcon,
        void Function()? actionOnPressed,
        void Function()? leadingOnPressed}) =>
    AppBar(
      title: pText(title, color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      toolbarHeight: 80.0,
      scrolledUnderElevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      backgroundColor: bgColor,
      actions: [
        IconButton(
          onPressed: actionOnPressed,
          icon: Icon(
            actionIcon,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
      leading: IconButton(
        onPressed: leadingOnPressed,
        icon: Icon(
          leadingIcon,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
