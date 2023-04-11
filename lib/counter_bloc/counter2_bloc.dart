import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter2_event.dart';
part 'counter2_state.dart';

///Bloc 1


// class Counter2Bloc extends Bloc<Counter2Event, Counter2State> {
//
//   Counter2Bloc() : super(Counter2State(counter: 0)) {
//     on<IncrementEvent>((event , emit){
//       emit(Counter2State(counter: state.counter+1));//submit
//     });
//
//     on<DecrementEvent>((event , emit){
//       emit(Counter2State(counter: state.counter- 1));
//     });
//
//
//   }
// }
///Bloc 2

class Counter2Bloc extends Bloc<Counter2Event, CounterState2> {
  int counter=0;
  Counter2Bloc() : super(CounterInitial()) {
    on<Counter2Event>((event , emit){
      if(event is IncrementEvent ){

        counter=counter+1;
        emit(CounterChangeState(num: counter));
      }
      else if( event is DecrementEvent){
        counter=counter-1;

        emit(CounterChangeState(num:counter ));

      }
      else {
        counter=0;
      emit(CounterChangeState(num: counter));
      }

    });

  }
}
