import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_bloc_app/misc/colors.dart';
import 'package:weather_bloc_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  String? text;
  IconData? icon;
  double size;
  bool? isIcon;
  final Color borderColor;

  AppButton(
      {Key? key,
      required this.color,
      this.isIcon = false,
      this.text = "Hi",
      this.icon,
      required this.size,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground),
      child: isIcon == false
          ? Center(
            child: AppText(
                text: text!,
                color: color,
              ),
          )
          : Icon(
              icon,
              color: color,
            ),
    );
  }
}
