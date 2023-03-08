import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_number_event.dart';
part 'random_number_state.dart';

class RandomNumberBloc extends Bloc<RandomNumberEvent, RandomNumberState> {
  RandomNumberBloc() : super(RandomNumberInitial()) {
    on<LoadRandomNumber>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      emit(const RandomNumberLoaded(number: 10));
    });
    on<GenerateRandomNumber>((event, emit) {
      if (state is RandomNumberLoaded) {
        final state = this.state as RandomNumberLoaded;
        //here we can change variable: number passed to the RandomNumberLoaded state
        //this should trigger when clicked
        emit(RandomNumberLoaded(number: 0));
      }
    });
  }
}
