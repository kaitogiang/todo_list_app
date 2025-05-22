// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:todo/features/todo_list/data/datasources/todo_local_data.dart'
    as _i659;
import 'package:todo/features/todo_list/data/repositories/todo_repository.dart'
    as _i24;
import 'package:todo/features/todo_list/data/repositories/todo_repository_iml.dart'
    as _i1017;
import 'package:todo/features/todo_list/domain/usecases/add_todo_use_case.dart'
    as _i767;
import 'package:todo/features/todo_list/domain/usecases/delete_todo_use_case.dart'
    as _i324;
import 'package:todo/features/todo_list/domain/usecases/get_todos_use_case.dart'
    as _i403;
import 'package:todo/features/todo_list/domain/usecases/update_todo_use_case.dart'
    as _i225;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i659.TodoLocalData>(
      () => _i659.TodoLocalData(
        gh<_i979.CollectionBox<List<Map<String, dynamic>>>>(),
      ),
    );
    gh.lazySingleton<_i24.TodoRepository>(
      () => _i1017.TodoRepositoryIml(gh<_i659.TodoLocalData>()),
    );
    gh.factory<_i767.AddTodoUseCase>(
      () => _i767.AddTodoUseCase(gh<_i24.TodoRepository>()),
    );
    gh.factory<_i324.DeleteTodoUseCase>(
      () => _i324.DeleteTodoUseCase(gh<_i24.TodoRepository>()),
    );
    gh.factory<_i403.GetTodosUseCase>(
      () => _i403.GetTodosUseCase(gh<_i24.TodoRepository>()),
    );
    gh.factory<_i225.UpdateTodoUseCase>(
      () => _i225.UpdateTodoUseCase(gh<_i24.TodoRepository>()),
    );
    return this;
  }
}
