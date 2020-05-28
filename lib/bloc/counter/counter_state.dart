part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({@required this.counter});
}

class CounterInitial extends CounterState {
  @override
  int get counter => 0;

  @override
  List<Object> get props => [];
}

class CounterUpdate extends CounterState {
  final int counter;
  const CounterUpdate({@required this.counter});

  @override
  List<Object> get props => [counter];
}
