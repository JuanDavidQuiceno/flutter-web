import 'package:curso_web/ui/layuot/layout_page.dart';
import 'package:curso_web/ui/view/view_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../ui/view/error_page.dart';
import '../ui/view/view_provider.dart';

class RouterGeneration {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _fadeRoute(
          const CounterView(),
          CounterView.routeName,
        );
      case '/counter':
        return _fadeRoute(
          const CounterView(),
          CounterView.routeName,
        );
      case '/provider':
        return _fadeRoute(
          const ViewProvider(),
          ViewProvider.routeName,
        );
      default:
        return _fadeRoute(
          const ErrorPage(),
          ErrorPage.routeName,
        );
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(
        name: routeName,
      ),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
    // return (kIsWeb)
    //     ? PageRouteBuilder(
    //         settings: RouteSettings(
    //           name: routeName,
    //         ),
    //         pageBuilder: (_, __, ___) => child,
    //         transitionsBuilder: (_, animation, __, ___) => FadeTransition(
    //           opacity: animation,
    //           child: child,
    //         ),
    //       )
    //     : MaterialPageRoute(
    //         builder: (_) => child,
    //         settings: RouteSettings(
    //           name: routeName,
    //         ),
    //       );
  }
}
