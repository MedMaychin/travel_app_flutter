import 'package:equatable/equatable.dart';
import 'package:travel_app_flutter/model/data_model.dart';

abstract class CubitsStates extends Equatable {}

class InitialState extends CubitsStates {
  @override
  List<Object?> get props => [Equatable];
}

class WelcomeState extends CubitsStates {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitsStates {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitsStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}
