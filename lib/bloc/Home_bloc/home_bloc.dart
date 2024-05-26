import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<OnAddEvent>(_onAddEvent);
     on<OnSubEvent>(_onSubEvent);
  }

  void _onAddEvent(OnAddEvent event, Emitter<HomeState> emit) {
    emit(state.copywith(count: state.count + 1));
  }
    void _onSubEvent(OnSubEvent event, Emitter<HomeState> emit) {
    emit(state.copywith(count: state.count- 1));
  }
}
