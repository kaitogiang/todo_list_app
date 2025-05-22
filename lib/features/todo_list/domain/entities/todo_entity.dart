import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';

part 'todo_entity.g.dart';

enum TodoStatus { pending, completed }

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    required String id,

    required String title,

    required TodoStatus status,

    DateTime? dueDate,
  }) = _TodoEntity;

  factory TodoEntity.fromJson(Map<String, Object?> json) =>
      _$TodoEntityFromJson(json);
}
