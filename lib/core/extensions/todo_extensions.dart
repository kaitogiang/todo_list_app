import 'package:todo/features/todo_list/data/models/todo_model.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

extension TodoModelConverter on TodoModel {
  TodoEntity get asTodoEntity {
    return TodoEntity(id: id, title: title, status: status, dueDate: dueDate);
  }
}

extension TodoEntityConverter on TodoEntity {
  TodoModel get asTodoModel {
    return TodoModel(id: id, title: title, status: status, dueDate: dueDate);
  }
}

extension ListConverter on List<TodoModel> {
  List<TodoEntity> get asTodoEntityList {
    return map(
      (TodoModel todo) => TodoEntity(
        id: todo.id,
        title: todo.title,
        status: todo.status,
        dueDate: todo.dueDate,
      ),
    ).toList();
  }
}
