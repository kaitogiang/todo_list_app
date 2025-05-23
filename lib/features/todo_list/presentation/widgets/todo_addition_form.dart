import 'package:flutter/material.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_text_field.dart';

class TodoAdditionForm extends StatefulWidget {
  const TodoAdditionForm({super.key});

  @override
  State<TodoAdditionForm> createState() => _TodoAdditionFormState();
}

class _TodoAdditionFormState extends State<TodoAdditionForm> {
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: _titleController, label: 'Todo title'),
        10.5.h,
        CustomTextField(
          controller: _dateController,
          hintText: 'Due date',
          readOnly: true,
          onTap: () {
            Helpers.selectDate(context);
          },
          suffixIcon: Icon(Icons.access_time),
        ),
      ],
    );
  }
}
