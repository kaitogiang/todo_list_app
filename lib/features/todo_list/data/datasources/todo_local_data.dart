import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/utils/app_constants.dart';
import 'package:todo/features/todo_list/data/models/todo_model.dart';

@LazySingleton()
class TodoLocalData {
  const TodoLocalData(this._todoBox);

  final CollectionBox<List<dynamic>> _todoBox;

  Future<List<TodoModel>> _getTodoList() async {
    final todos = await _todoBox.get(AppConstants.userTodosKey);
    final todoMapList =
        todos?.map((item) {
          return Map<String, dynamic>.from(item);
        }).toList();
    Logger().i(todos);
    return todoMapList?.map((todo) => TodoModel.fromJson(todo)).toList() ?? [];
  }

  ///Get the todo list from local database
  Future<List<TodoModel>> getTodos() async {
    return await _getTodoList();
  }

  ///Add new todo to the local database
  Future<TodoModel> addTodo(TodoModel todo) async {
    final currentTodoList = await _todoBox.get(AppConstants.userTodosKey) ?? [];
    currentTodoList.add(todo.toJson());
    await _todoBox.put(AppConstants.userTodosKey, currentTodoList);
    return todo;
  }

  ///Update an existing todo in the local database
  Future<TodoModel> updateTodo(TodoModel todo) async {
    final currentTodoModelList = await _getTodoList();
    final updatedTodoIndex = currentTodoModelList.indexWhere(
      (td) => td.id == todo.id,
    );
    currentTodoModelList[updatedTodoIndex] = todo;
    final currentTodoMapList =
        currentTodoModelList.map((todo) {
          return todo.toJson();
        }).toList();
    await _todoBox.put(AppConstants.userTodosKey, currentTodoMapList);
    return todo;
  }

  Future<bool> deleteTodo(String id) async {
    final currentTodoModelList = await _getTodoList();
    final existingTodo = currentTodoModelList.firstWhereOrNull((todo) {
      return todo.id == id;
    });

    if (existingTodo == null) return false;

    currentTodoModelList.removeWhere((todo) => todo.id == id);
    final currentTodoMapList =
        currentTodoModelList.map((todo) {
          return todo.toJson();
        }).toList();
    await _todoBox.put(AppConstants.userTodosKey, currentTodoMapList);
    return true;
  }
}
