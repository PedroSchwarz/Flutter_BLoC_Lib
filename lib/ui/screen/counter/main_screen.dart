import 'package:bloc_lib/bloc/counter/counter_bloc.dart';
import 'package:bloc_lib/ui/widgets/counter/counter_actions.dart';
import 'package:bloc_lib/ui/widgets/counter/counter_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: CounterStream(),
        ),
        floatingActionButton: CounterActions(),
      ),
    );
  }
}
