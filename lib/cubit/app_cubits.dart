import 'package:bloc/bloc.dart';
import 'package:travel_app_flutter/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitsStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
