import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

part 'todo_model.freezed.dart';

part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String id,

    required String title,

    required TodoStatus status,

    DateTime? dueDate,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
