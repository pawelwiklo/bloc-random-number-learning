import 'package:bloc_random_number_learning_app/bloc/random_number_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    BlocProvider manage's bloc lifecycle,
     */
    return Scaffold(
      body: Center(
        child: BlocBuilder<RandomNumberBloc, RandomNumberState>(
          builder: (context, state) {
            if (state is RandomNumberInitial) {
              return CircularProgressIndicator();
            } else if (state is RandomNumberLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Random number value:'),
                  Text(
                    '${state.number}',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              );
            } else {
              return Text('Couldn\'t load bloc content');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<RandomNumberBloc>().add(GenerateRandomNumber());
          },
          child: Icon(Icons.add_circle)),
    );
  }
}
