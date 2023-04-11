part of 'counter_cubit.dart';

 abstract class CounterState{} //1
 //abstract class NotificationState
class CounterInitial extends CounterState {}
class CounterIncreaseState extends CounterState {}
class CounterDecreaseState extends CounterState {}
