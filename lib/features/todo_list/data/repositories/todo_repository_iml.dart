import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:todo/features/todo_list/data/datasources/todo_local_data.dart';
import 'package:todo/features/todo_list/data/repositories/todo_repository.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/core/extensions/todo_extensions.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryIml extends TodoRepository {
  TodoRepositoryIml(this._todoLocalData);

  final TodoLocalData _todoLocalData;

  @override
  FutureOr<List<TodoEntity>> getTodos() async {
    final todos = await _todoLocalData.getTodos();
    return todos.asTodoEntityList;
  }

  @override
  FutureOr<TodoEntity> addTodo(TodoEntity todo) async {
    await _todoLocalData.addTodo(todo.asTodoModel);
    return todo;
  }

  @override
  FutureOr<TodoEntity?> updateTodo(TodoEntity todo) async {
    await _todoLocalData.updateTodo(todo.asTodoModel);
    return todo;
  }

  @override
  FutureOr<bool> deleteTodo(String id) async {
    final isDeleted = await _todoLocalData.deleteTodo(id);
    return isDeleted;
  }
}
