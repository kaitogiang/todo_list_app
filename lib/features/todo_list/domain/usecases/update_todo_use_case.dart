import 'package:injectable/injectable.dart';
import 'package:todo/features/todo_list/data/repositories/todo_repository.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

@injectable
class UpdateTodoUseCase {
  final TodoRepository _repository;

  UpdateTodoUseCase(this._repository);

  Future<TodoEntity?> execute(TodoEntity todo) async {
    return await _repository.updateTodo(todo);
  }
}
