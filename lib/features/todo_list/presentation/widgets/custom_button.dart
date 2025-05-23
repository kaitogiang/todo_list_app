import 'package:flutter/material.dart';
import 'package:todo/core/utils/app_colors.dart';
import 'package:todo/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isSecondary = false,
    this.width,
    this.height,
  });

  final String title;

  final VoidCallback onPressed;

  final bool isSecondary;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isSecondary ? AppColors.grey : AppColors.primaryColor,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        // fixedSize: Size(width ?? double.infinity, height ?? 40),
        fixedSize: Size.fromHeight(height ?? 40),
        backgroundColor: isSecondary ? null : AppColors.primaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.textSize18(
          color: isSecondary ? AppColors.grey : AppColors.white,
        ),
      ),
    );
  }
}
