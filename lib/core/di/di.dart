import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/core/utils/app_constants.dart';
import 'di.config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:logger/logger.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  final dir = await getApplicationDocumentsDirectory();
  Logger().d('Path: ${dir.path}');
  final collection = await BoxCollection.open(AppConstants.databaseName, {
    AppConstants.userTodosKey,
  }, path: dir.path);

  final CollectionBox<List<Map<String, dynamic>>> todoBox = await collection
      .openBox(AppConstants.userTodosKey);
  getIt.registerSingleton<CollectionBox<List<Map<String, dynamic>>>>(todoBox);

  getIt.init();
}
