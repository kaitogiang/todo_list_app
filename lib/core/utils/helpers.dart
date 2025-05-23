import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/utils/app_colors.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_button.dart';

enum ToastType { success, error }

class Helpers {
  static List<TodoEntity> findAndReplaceItem<T>(
    TodoEntity? replace,
    List<TodoEntity> origin,
  ) {
    final list = [...origin];
    if (replace == null) return list;
    final updatedList =
        list.map((item) {
          if (item.id == replace.id) {
            return replace;
          }

          return item;
        }).toList();

    return updatedList;
  }

  static Future<DateTime?> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    Logger().e('Selected date is: $picked');
    return picked;
  }

  static void showToastBottom({
    required String title,
    required BuildContext context,
    ToastType tostType = ToastType.success,
  }) {
    final rootContext = Navigator.of(context, rootNavigator: true).context;
    ScaffoldMessenger.of(rootContext).showSnackBar(
      SnackBar(
        content: Text(title),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        margin: const EdgeInsets.symmetric(horizontal: 200),
        backgroundColor:
            tostType == ToastType.success
                ? AppColors.successfulColor
                : AppColors.errorColor,
      ),
    );
  }

  static void showCustomDialog({
    required BuildContext context,
    required Widget customWidget,
    String? title,
    bool barrierDismissible = true,
    Function()? onSecondaryPressed,
    bool isShowSecondaryButton = false,
    double? horizontalPadding,
    double? verticalPadding,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? context.widthScreen * 0.3,
            vertical: verticalPadding ?? context.hightScreen * 0.3,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (title != null)
                      Text(
                        title,
                        style: AppTextStyle.textSize30(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Expanded(child: customWidget),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showConfirmDialog({
    required BuildContext context,
    required String title,
    required Function() onPrimaryPressed,
    String? content,
    bool barrierDismissible = true,
    String? labelPrimaryButton,
    String? labelSecondaryButton,
    Function()? onSecondaryPressed,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: context.widthScreen * 0.3,
            vertical: context.hightScreen * 0.3,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.textSize30(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (content != null) 10.0.h,
                    if (content != null)
                      Text(content, style: AppTextStyle.textSize18()),
                    10.0.h,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: CustomButton(
                            title: labelPrimaryButton ?? 'Cancel',
                            isSecondary: true,
                            onPressed: () {
                              Navigator.of(context).pop();
                              onSecondaryPressed?.call();
                            },
                          ),
                        ),
                        20.0.w,
                        Expanded(
                          child: CustomButton(
                            title: labelPrimaryButton ?? 'Ok',
                            onPressed: () {
                              Navigator.of(context).pop();
                              onPrimaryPressed.call();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static String formatDate(DateTime date, [String pattern = 'dd/MM/yyyy']) {
    final formatted = DateFormat(pattern).format(date);
    return formatted;
  }
}
