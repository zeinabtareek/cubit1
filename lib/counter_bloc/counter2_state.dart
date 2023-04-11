part of 'counter2_bloc.dart';

@immutable

///first bloc example
// class Counter2State {
//   final int counter;
//   Counter2State({required this.counter});
// }

///sec bloc example(cubit)

abstract class CounterState2{} //1
 class CounterInitial extends CounterState2 {}
  class CounterChangeState extends CounterState2 {
   final  int num;
    CounterChangeState({required this.num});
}
// class CounterDecreaseState extends CounterState2 {}
