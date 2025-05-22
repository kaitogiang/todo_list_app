part of 'todo_bloc.dart';

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent() = _TodoEvent;
  const factory TodoEvent.todoRetrieved() = _TodoRetrieving;
  const factory TodoEvent.todoAdded(TodoEntity todo) = _TodoAdded;
  const factory TodoEvent.todoUpdated(TodoEntity todo) = _TodoUpdated;
  const factory TodoEvent.todoDeleted(String id) = _TodoDeleted;
}
