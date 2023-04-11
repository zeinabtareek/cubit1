import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {//controller
  CounterCubit() : super(CounterInitial());
  //variable , func
  static CounterCubit get(BuildContext context){
   return BlocProvider.of(context);
 }

 int number=0;

  increase(){
    number++;
    emit(CounterIncreaseState());
    //update

  }
  decrease(){
    number--;
    emit(CounterDecreaseState());

  }
}
