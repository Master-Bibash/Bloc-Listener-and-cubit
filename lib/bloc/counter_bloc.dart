import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_Event.dart';

final class CounterBloc extends Bloc<CountereEent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });
    on<CounterDecremented>((event, emit) {
      if (state == 0) {
        return;
      }
       emit(state - 1);
    });
  }
}
