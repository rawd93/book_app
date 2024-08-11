import 'package:book_app/core/Utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.borderRadius,
    this.fontSize,
  });
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w600,
              color: textColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
