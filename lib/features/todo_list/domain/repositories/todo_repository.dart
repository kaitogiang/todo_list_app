//The TodoRepository class is an abstract class that defines the contract for a todo repository.

//It contains the main methods that will be implemented by the concrete repository classes at the data layer.

import 'dart:async';

import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  ///Method for getting the list of todos

  FutureOr<List<TodoEntity>> getTodos();

  ///Method for adding a new task
  FutureOr<TodoEntity> addTodo(TodoEntity todo);

  ///Method for updating a task

  FutureOr<TodoEntity> updateTodo(TodoEntity todo);

  ///Method for deleting a task

  FutureOr<bool> deleteTodo();
}
