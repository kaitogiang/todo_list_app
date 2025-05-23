import 'package:flutter/material.dart';
import 'package:todo/core/utils/app_text_style.dart';

class EmptyCustom extends StatelessWidget {
  const EmptyCustom({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(title, style: AppTextStyle.textSize18()),
    );
  }
}
