import 'package:flutter/material.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_button.dart';

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

  static void showToastBottom({
    required String title,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(title), duration: Duration(seconds: 2)),
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
            vertical: context.hightScreen * 0.2,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  5.0.h,
                  Text(
                    title,
                    style: AppTextStyle.textSize30(fontWeight: FontWeight.bold),
                  ),
                  if (content != null) 10.0.h,
                  if (content != null) Text(content),
                  10.0.h,
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomButton(
                          title: labelPrimaryButton ?? 'Cancel',
                          isSecondary: true,
                          onPressed: () {
                            Navigator.of(context).pop();
                            onSecondaryPressed?.call();
                          },
                        ),
                        20.0.w,
                        CustomButton(
                          title: labelPrimaryButton ?? 'Ok',
                          onPressed: () {
                            Navigator.of(context).pop();
                            onPrimaryPressed.call();
                          },
                        ),
                      ],
                    ),
                  ),
                  20.0.h,
                ],
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
}
