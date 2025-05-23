import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

class Helpers {
  static List<TodoEntity> findAndReplaceItem<T>(
    TodoEntity? replace,
    List<TodoEntity> origin,
  ) {
    final list = [...origin];
    if (replace == null) return list;
    final updatedList =
        list.map((item) {
          if (item.id == replace.id) {
            return replace;
          }

          return item;
        }).toList();

    return updatedList;
  }
}
