import 'package:bloc/bloc.dart';

import 'counter_event.dart';

/// bele is on evetn that will increment


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    /// based on the evnet handler
    on<CounterIncrement>((event, emit) {
      print("increment");
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit) {
      print("CounterDecrement");
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
