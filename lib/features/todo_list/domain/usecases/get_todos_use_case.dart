import 'package:injectable/injectable.dart';
import 'package:todo/features/todo_list/data/repositories/todo_repository.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

@injectable
class GetTodosUseCase {
  final TodoRepository _repository;

  GetTodosUseCase(this._repository);

  Future<List<TodoEntity>> execute() async {
    return _repository.getTodos();
  }
}