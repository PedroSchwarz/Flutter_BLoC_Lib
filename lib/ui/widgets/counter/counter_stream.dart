import 'package:bloc_lib/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterStream extends StatelessWidget {
  const CounterStream({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(
      builder: (context, int state) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$state',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        );
      },
    );
  }
}
