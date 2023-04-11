part of 'counter2_bloc.dart';

@immutable
abstract class Counter2Event {}
class IncrementEvent  extends Counter2Event{}
class DecrementEvent  extends Counter2Event{}
class ResetEvent  extends Counter2Event{}