import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_button.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_text_field.dart';

class TodoAdditionForm extends StatefulWidget {
  const TodoAdditionForm({super.key, this.todo});

  final TodoEntity? todo;

  @override
  State<TodoAdditionForm> createState() => _TodoAdditionFormState();
}

class _TodoAdditionFormState extends State<TodoAdditionForm> {
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  TodoStatus? _selectedStatus = TodoStatus.pending;

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
        10.5.h,
        Row(
          children: [
            Text('Status: ', style: AppTextStyle.textSize18()),
            Expanded(
              child: RadioListTile(
                value: TodoStatus.pending,
                title: Text('pending'),
                groupValue: _selectedStatus,
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                value: TodoStatus.completed,
                title: Text('completed'),
                groupValue: _selectedStatus,
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Save',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
