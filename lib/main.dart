import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:todo/core/observer/todo_bloc_observer.dart';
import 'package:todo/core/utils/helpers.dart';
import 'package:todo/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo_list/presentation/pages/todo_page.dart';
import 'core/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize Hive
  await Hive.initFlutter();
  await configureInjection();
  Bloc.observer = TodoBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
          BlocProvider(create: (context) => GetIt.instance.get<TodoBloc>()),
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: TodoPage()
      ),
    );
  }
}
