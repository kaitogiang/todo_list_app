import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/features/todo_list/presentation/bloc/todo_bloc.dart';
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
  DateTime? _selectedDate;
  TodoStatus? _selectedStatus = TodoStatus.pending;
  late TodoEntity? _localTodo;
  late Bloc _todoBloc;
  @override
  void initState() {
    super.initState();
    _todoBloc = context.read<TodoBloc>();
    if (widget.todo != null) {
      print('Todo in form: ${widget.todo?.dueDate}');
      _localTodo = TodoEntity(
        id: widget.todo!.id,
        title: widget.todo!.title,
        status: widget.todo!.status,
        dueDate: widget.todo?.dueDate,
      );
      _titleController.text = _localTodo?.title ?? '';
      if (_localTodo?.dueDate != null) {
        _dateController.text = Helpers.formatDate(_localTodo!.dueDate!);
        _selectedDate = _localTodo!.dueDate!;
      }
      _selectedStatus = _localTodo!.status;
    } else {
      _localTodo = TodoEntity(
        id: DateTime.now().toIso8601String(),
        title: '',
        status: TodoStatus.pending,
      );
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  void _submit() async {
    if (_titleController.text.trim().isEmpty) {
      Helpers.showToastBottom(
        title: 'The title cannot be empty',
        context: context,
        tostType: ToastType.error,
      );

      return;
    }

    _localTodo = _localTodo!.copyWith(
      title: _titleController.text.trim(),
      status: _selectedStatus ?? TodoStatus.pending,
      dueDate: _selectedDate,
    );

    //Add operation
    if (widget.todo == null) {
      _todoBloc.add(TodoEvent.todoAdded(_localTodo!));
    } else {
      //Update operation
      _todoBloc.add(TodoEvent.todoUpdated(_localTodo!));
    }

    Navigator.of(context).pop();
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
          onTap: () async {
            _selectedDate =
                await Helpers.selectDate(context, currentDate: _selectedDate) ??
                _selectedDate;
            if (_selectedDate != null) {
              _dateController.text = Helpers.formatDate(_selectedDate!);
            } else {
              _dateController.text =
                  _selectedDate != null
                      ? Helpers.formatDate(_selectedDate!)
                      : '';
            }
          },
          suffixIcon: Icon(Icons.access_time),
        ),
        10.5.h,
        Builder(
          builder: (context) {
            if (widget.todo == null) {
              return SizedBox.shrink();
            }
            return Row(
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
            );
          },
        ),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Save',
                    isEnabled: true,
                    onPressed: () => _submit(),
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
