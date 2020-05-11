import 'package:bloc_lib/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterActions extends StatelessWidget {
  const CounterActions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.bloc<CounterBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => _bloc.add(IncrementEvent()),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () => _bloc.add(DecrementEvent()),
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
