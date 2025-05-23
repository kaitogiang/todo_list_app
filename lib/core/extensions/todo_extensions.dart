import 'package:flutter/material.dart';
import 'package:todo/core/utils/app_colors.dart';
import 'package:todo/features/todo_list/data/models/todo_model.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

extension TodoModelConverter on TodoModel {
  TodoEntity get asTodoEntity {
    return TodoEntity(id: id, title: title, status: status, dueDate: dueDate);
  }
}

extension TodoEntityConverter on TodoEntity {
  TodoModel get asTodoModel {
    return TodoModel(id: id, title: title, status: status, dueDate: dueDate);
  }
}

extension TodoStatusX on TodoStatus {
  Color get color {
    return switch (this) {
      TodoStatus.pending => AppColors.yellowColor,
      TodoStatus.completed => AppColors.successfulColor,
    };
  }

  Color get textColor {
    return switch (this) {
      TodoStatus.pending => AppColors.black,
      TodoStatus.completed => AppColors.white,
    };
  }
}

extension ListConverter on List<TodoModel> {
  List<TodoEntity> get asTodoEntityList {
    return map(
      (TodoModel todo) => TodoEntity(
        id: todo.id,
        title: todo.title,
        status: todo.status,
        dueDate: todo.dueDate,
      ),
    ).toList();
  }
}

extension ContextX on BuildContext {
  double get widthScreen => MediaQuery.of(this).size.width;
  double get hightScreen => MediaQuery.of(this).size.height;
}

extension IntX on double {
  SizedBox get h => SizedBox(height: this);
  SizedBox get w => SizedBox(width: this);
}
