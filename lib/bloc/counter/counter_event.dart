part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  const IncrementEvent();

  @override
  List<Object> get props => [];
}

class DecrementEvent extends CounterEvent {
  const DecrementEvent();

  @override
  List<Object> get props => [];
}
