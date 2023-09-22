import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onpressed;
  final double? width;
  final double? height;

  CustomButton({
    super.key,
    required this.text,
    required this.onpressed,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              fixedSize: const Size(300, 50),
              side: BorderSide(color: AppColors.blueColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
