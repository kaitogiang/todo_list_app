import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_button.dart';
import 'package:todo/features/todo_list/presentation/widgets/empty_custom.dart';
import 'package:todo/features/todo_list/presentation/widgets/todo_addition_form.dart';
import 'package:todo/features/todo_list/presentation/widgets/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late Bloc _todoBloc;
  @override
  void initState() {
    super.initState();
    _todoBloc = context.read<TodoBloc>();
    _todoBloc.add(TodoEvent.todoRetrieved());
  }

  bool _isLoading(TodoState state) {
    return state.addTodoLoading ||
        state.updateTodoLoading ||
        state.deleteTodoLoading ||
        state.getTodoLoading;
  }

  List<TodoItem> _filterTodoListByStatus(
    List<TodoEntity> todos, {
    TodoStatus status = TodoStatus.pending,
  }) {
    final filterTodos = todos.where((todo) => todo.status == status).toList();
    return filterTodos.map((todo) {
      return TodoItem(
        todo: todo,
        onDelete: () {
          Helpers.showConfirmDialog(
            context: context,
            title: 'Confirm Deletion',
            content:
                'Are you sure you want to delete this task? This action cannot be undone ',
            onPrimaryPressed: () {
              _todoBloc.add(TodoEvent.todoDeleted(todo.id));
            },
          );
        },
        onEdit: () {
          Helpers.showCustomDialog(
            context: context,
            verticalPadding: 100,
            title: 'Add todo',
            customWidget: TodoAdditionForm(todo: todo),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: _isLoading(state),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.widthScreen * 0.12,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tasks',
                        style: AppTextStyle.textSize30(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomButton(
                        title: 'Add Task',
                        onPressed: () {
                          Helpers.showCustomDialog(
                            context: context,
                            verticalPadding: 100,
                            title: 'Add todo',
                            customWidget: TodoAdditionForm(),
                          );
                        },
                      ),
                    ],
                  ),
                  10.0.h,
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final todos = _filterTodoListByStatus(state.todos);
                        if (todos.isEmpty) {
                          return EmptyCustom(title: 'No task found');
                        }

                        return ListView(children: todos);
                      },
                    ),
                  ),
                  Text(
                    'Completed',
                    style: AppTextStyle.textSize30(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final todos = _filterTodoListByStatus(
                          state.todos,
                          status: TodoStatus.completed,
                        );
                        if (todos.isEmpty) {
                          return EmptyCustom(title: 'No completed task found');
                        }
                        return ListView(children: todos);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
