//The TodoRepository class is an abstract class that defines the contract for a todo repository.

//It contains the main methods that will be implemented by the concrete repository classes at the data layer.

import 'dart:async';

import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  ///Method for getting the list of todos

  FutureOr<List<TodoEntity>> getTodos();

  ///Method for adding a new task
  FutureOr<TodoEntity> addTodo();

  ///Method for updating a task

  FutureOr<TodoEntity> updateTodo();

  ///Method for deleting a task

  FutureOr<bool> deleteTodo();
}
