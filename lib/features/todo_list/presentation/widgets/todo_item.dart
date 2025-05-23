import 'package:flutter/material.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.todo,
    required this.onDelete,
    required this.onEdit,
  });

  final TodoEntity todo;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(todo.title, style: AppTextStyle.textSize18())),
            5.0.w,  
            _buildTodoStatus(todo.status),
            if (todo.dueDate != null) 10.0.w,
            if (todo.dueDate != null) _buildDueDate(todo.dueDate!),
            10.0.w,
            _buildActionButtons(onEdit, onDelete),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(VoidCallback onEdit, VoidCallback onDelete) {
    return Row(
      children: [
        IconButton(onPressed: onEdit, icon: Icon(Icons.edit)),
        10.0.w,
        IconButton(onPressed: onEdit, icon: Icon(Icons.delete)),
      ],
    );
  }

  Widget _buildDueDate(DateTime dueDate) {
    return Row(
      children: [
        Icon(Icons.access_time),
        5.0.w,
        Text(Helpers.formatDate(dueDate)),
      ],
    );
  }

  Widget _buildTodoStatus(TodoStatus status) {
    return Container(
      decoration: BoxDecoration(
        color: status.color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 80,
      alignment: Alignment.center,
      child: Text(
        status.value,
        style: AppTextStyle.textSize12(color: status.textColor),
      ),
    );
    // return InputChip(
    //   color: WidgetStatePropertyAll(status.color),
    //   label: Text(
    //     status.value,
    //     style: AppTextStyle.textSize12(color: status.textColor),
    //   ),
    // );
  }
}
