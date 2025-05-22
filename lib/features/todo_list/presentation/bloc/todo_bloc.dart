import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/todo_list/domain/usecases/add_todo_use_case.dart';
import 'package:todo/features/todo_list/domain/usecases/delete_todo_use_case.dart';
import 'package:todo/features/todo_list/domain/usecases/get_todos_use_case.dart';
import 'package:todo/features/todo_list/domain/usecases/update_todo_use_case.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@LazySingleton()
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final AddTodoUseCase _addTodoUseCase;
  final DeleteTodoUseCase _deleteTodoUseCase;
  final GetTodosUseCase _getTodosUseCase;
  final UpdateTodoUseCase _updateTodoUseCase;

  TodoBloc(
    this._addTodoUseCase,
    this._deleteTodoUseCase,
    this._getTodosUseCase,
    this._updateTodoUseCase,
  ) : super(const TodoState()) {
    on<_TodoRetrieved>(_onTodoRetrieved);
    on<_TodoAdded>(_onTodoAdded);
    on<_TodoUpdated>(_onTodoUpdated);
    on<_TodoDeleted>(_onTodoDeleted);
  }

  FutureOr<void> _onTodoRetrieved(
    _TodoRetrieved event,
    Emitter<TodoState> emit,
  ) async {}

  FutureOr<void> _onTodoAdded(
    _TodoAdded event,
    Emitter<TodoState> emit,
  ) async {}

  FutureOr<void> _onTodoUpdated(
    _TodoUpdated event,
    Emitter<TodoState> emit,
  ) async {}

  FutureOr<void> _onTodoDeleted(
    _TodoDeleted event,
    Emitter<TodoState> emit,
  ) async {}
}
