part of 'todo_bloc.dart';

@Freezed(
  copyWith: true,
  equal: true,
)
abstract class TodoState with _$TodoState {
  const TodoState._();

  const factory TodoState({
    @Default(false) bool addTodoLoading,
    @Default(false) bool getTodoLoading,
    @Default(false) bool updateTodoLoading,
    @Default(false) bool deleteTodoLoading,
    @Default([]) List<TodoEntity> todos,
  }) = _TodoState;
}