part of 'random_number_bloc.dart';

abstract class RandomNumberState extends Equatable {
  const RandomNumberState();
}

class RandomNumberInitial extends RandomNumberState {
  @override
  List<Object> get props => [];
}

class RandomNumberLoaded extends RandomNumberState {
  final int number;

  const RandomNumberLoaded({required this.number});

  @override
  List<Object> get props => [number];
}
