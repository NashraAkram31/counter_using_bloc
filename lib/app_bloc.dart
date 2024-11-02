import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/app_event.dart';
import 'package:ulearning/app_state.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitState()) {
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
  }
}
