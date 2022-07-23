import 'package:get_it/get_it.dart';

import 'services/navigation_service.dart';

GetIt global = GetIt.instance;

void setUpGlobalLocator() {
  global = GetIt.I;
  global.registerLazySingleton(() => NavigationService());
}
