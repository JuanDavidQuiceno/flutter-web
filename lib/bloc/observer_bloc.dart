import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

/// Encargado de observar los cambios en todos los blocs
class ObserverBloc extends BlocObserver {
  final Logger _logger = Logger();

  // Cuando ocurre un evento en cualquier bloc
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.d('bloc: ${bloc.runtimeType}, event: $event');
  }

  // Cuando ocurre una transición de estados en cualquier bloc
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logger.d('bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _logger.d('bloc: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.d('bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger
        .d('bloc: ${bloc.runtimeType}, error: $error, stacktrace: $stackTrace');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.d('bloc: ${bloc.runtimeType}');
  }
}
