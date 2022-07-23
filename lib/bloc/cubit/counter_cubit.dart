import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

// class CounterCubit extends Cubit<CounterInitial> {
//   CounterCubit() : super(CounterInitial(0));
//   void increment() => emit(CounterInitial(state.counterValue + 1));
//   void decrement() => emit(CounterInitial(state.counterValue - 1));

//   // @override
//   // void onError(Object error, StackTrace stackTrace) {
//   //   print('$error, $stackTrace');
//   //   super.onError(error, stackTrace);
//   // }
// }
