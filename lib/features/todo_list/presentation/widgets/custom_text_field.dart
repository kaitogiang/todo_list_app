import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/utils/app_colors.dart';
import 'package:todo/core/utils/app_text_style.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.focusNode,
    this.isEnabled = true,
    this.onFieldSubmit,
    this.readOnly = false,
    this.onTap,
    this.onListenField,
    this.suffixIcon,
  });

  final String? label;

  final String? hintText;

  final TextEditingController controller;

  final FocusNode? focusNode;

  final bool isEnabled;

  final Function(String)? onFieldSubmit;

  final bool readOnly;

  final Function()? onTap;

  final ValueChanged<String>? onListenField;

  final Widget? suffixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      enabled: widget.isEnabled,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        hintStyle: AppTextStyle.textSize18(color: AppColors.grey),
        hintText: widget.hintText,
        label: widget.label != null ? Text(widget.label!) : null,
        labelStyle: AppTextStyle.textSize18(color: AppColors.grey),
        suffixIcon: widget.suffixIcon,
      ),
      style: AppTextStyle.textSize18(),
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onFieldSubmitted: widget.onFieldSubmit,
      onChanged: (value) {
        widget.onListenField?.call(value);
      },
    );
  }
}
