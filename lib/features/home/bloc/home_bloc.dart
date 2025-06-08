import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

// BLoC responsável por gerenciar a lógica do contador

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(value: 0)) {
    on<IncrementCounter>(_onIncrement);
    on<DecrementCounter>(_onDecrement);
    on<ResetCounter>(_onReset);
  }

  void _onIncrement(IncrementCounter event, Emitter<HomeState> emit) {
    emit(state.copyWith(value: state.value + 1));
  }

  void _onDecrement(DecrementCounter event, Emitter<HomeState> emit) {
    emit(state.copyWith(value: state.value - 1));
  }

  void _onReset(ResetCounter event, Emitter<HomeState> emit) {
    emit(HomeState(value: 0));
  }
}
