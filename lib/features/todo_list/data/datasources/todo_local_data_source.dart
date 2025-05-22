import 'package:injectable/injectable.dart';

import 'package:hive/hive.dart';
import 'package:todo/core/utils/app_constants.dart';
import 'package:todo/features/todo_list/data/models/todo_model.dart';

@LazySingleton()
class TodoLocalDataSource {
  const TodoLocalDataSource(this._todoBox);

  final CollectionBox<List<Map<String, dynamic>>> _todoBox;

  ///Get the todo list from local database
  Future<List<TodoModel>> getTodos() async {
    final todos = await _todoBox.get(AppConstants.userTodosKey);
    return todos?.map((todo) => TodoModel.fromJson(todo)).toList() ?? [];
  }

  ///Add new todo to the local database
  Future<TodoModel> addTodo(TodoModel todo) async {
    final currentTodoList = await _todoBox.get(AppConstants.userTodosKey) ?? [];
    currentTodoList.add(todo.toJson());
    await _todoBox.put(AppConstants.userTodosKey, currentTodoList);
    return todo;
  }



  
}
