import 'package:injectable/injectable.dart';

import 'package:hive/hive.dart';
import 'package:todo/core/utils/app_constants.dart';
import 'package:todo/features/todo_list/data/models/todo_model.dart';

@LazySingleton()
class TodoLocalDataSource {
  const TodoLocalDataSource(this._todoBox);

  final CollectionBox<Map<String, dynamic>> _todoBox;

  ///Get the todo list from local database
  Future<List<TodoModel>> getTodos() async {
    final todos = await _todoBox.get(AppConstants.userTodosKey);
    final listMap = (todos as List).cast<Map<String, dynamic>>();
    return listMap.map((todo) => TodoModel.fromJson(todo)).toList();
  }

}
