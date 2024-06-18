import 'package:equatable/equatable.dart';


abstract class CubitsStates extends Equatable {

}



class InitialState extends CubitsStates {
  @override
  List<Object?> get props => [
    Equatable
  ];
}


class WelcomeState extends CubitsStates {
  @override
  List<Object> get props => [];
}