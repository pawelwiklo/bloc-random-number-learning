part of 'random_number_bloc.dart';

abstract class RandomNumberEvent extends Equatable {
  const RandomNumberEvent();
}

class LoadRandomNumber extends RandomNumberEvent {
  @override
  List<Object?> get props => [];
}

class GenerateRandomNumber extends RandomNumberEvent {
  // final int number;
  //
  // const GenerateRandomNumber({required this.number});
  //
  // @override
  // List<Object?> get props => [number];
  @override
  List<Object?> get props => [];
}
