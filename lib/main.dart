import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'bloc/observer_bloc.dart';
import 'global_locator.dart';
import 'locator.dart';
import 'router/router_generation.dart';
import 'services/navigation_service.dart';
import 'ui/layuot/layout_page.dart';

void main() {
  setUpGlobalLocator();
  BlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    blocObserver: ObserverBloc(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      initialRoute: '/',
      onGenerateRoute: RouterGeneration.generateRoute,
      navigatorKey: global<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
