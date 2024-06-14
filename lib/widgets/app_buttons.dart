import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';
import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons(
      {super.key,
      this.isIcon = false,
      required this.color,
      required this.backgroundColor,
      required this.size,
      this.text="hi",
      this.icon,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
            child: AppText(
                text: text!,
                color: color,
              ),
          )
          : Center(child: Icon(icon, color: color)),
    );
  }
}
