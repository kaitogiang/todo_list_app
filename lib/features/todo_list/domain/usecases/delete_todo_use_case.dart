import 'package:injectable/injectable.dart';
import 'package:todo/features/todo_list/data/repositories/todo_repository.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

@injectable
class DeleteTodoUseCase {
  final TodoRepository _repository;
  DeleteTodoUseCase(this._repository);

  Future<bool> execute(String id) async {
    return await _repository.deleteTodo(id);
  }
}
