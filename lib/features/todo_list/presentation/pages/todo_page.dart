import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/utils/app_text_style.dart';
import 'package:todo/core/extensions/todo_extensions.dart';
import 'package:todo/features/todo_list/domain/entities/todo_entity.dart';
import 'package:todo/features/todo_list/presentation/widgets/custom_button.dart';
import 'package:todo/features/todo_list/presentation/widgets/todo_item.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  style: AppTextStyle.textSize30(fontWeight: FontWeight.bold),
                ),
                CustomButton(title: 'Add Task', onPressed: () {}),
              ],
            ),
            10.0.h,
            Expanded(
              child: ListView(
                children: [
                  TodoItem(
                    todo: TodoEntity(
                      id: 'id',
                      title:
                          'title ajslfdjalk sjlfajslkd jlfaksjdl fajsld kfajsldk jlaskjd lfak jsldkfjaslkd fkajlfdsk asfdasldjf lkajslfjalsd jlfasjdl fajls djkf',
                      status: TodoStatus.pending,
                      dueDate: DateTime.now(),
                    ),
                    onDelete: () {
                      Logger().i('Delete');
                    },
                    onEdit: () {
                      Logger().i('Edit');
                    },
                  ),
                  TodoItem(
                    todo: TodoEntity(
                      id: 'id',
                      title:
                          'title ajslfdjalk sjlfajslkd jlfaksjdl fajsld kfajsldk jlaskjd lfak jsldkfjaslkd fkajlfdsk asfdasldjf lkajslfjalsd jlfasjdl fajls djkf',
                      status: TodoStatus.completed,
                      dueDate: DateTime.now(),
                    ),
                    onDelete: () {
                      Logger().i('Delete');
                    },
                    onEdit: () {
                      Logger().i('Edit');
                    },
                  ),
                ],
              ),
            ),
            Text(
              'Completed',
              style: AppTextStyle.textSize30(fontWeight: FontWeight.bold),
            ),
            Expanded(child: ListView(children: [
                  
                ],
              )),
          ],
        ),
      ),
    );
  }
}
