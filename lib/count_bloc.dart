import 'package:bloc/bloc.dart';
import 'package:tut01/count_event.dart';
import 'package:tut01/count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  @override
  get initialState => CountState.initial();

  @override
  Stream<CountState> mapEventToState(CountEvent event) async* {
    if (event is IncrementEvent) {
      yield CountState.newState(state.count + 1);
    } else if (event is DecrementEvent) {
      yield CountState.newState(state.count - 1);
    }
  }

  onIncrement() {
    add(IncrementEvent());
  }

  onDecrement() {
    add(DecrementEvent());
  }
}