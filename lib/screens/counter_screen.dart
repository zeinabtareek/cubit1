

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../counter_bloc/counter2_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);


//ui , <controller> , services , =>Getx=(Obx , )
//ui , <cubit , state>  , services , =>cubit
//ui , <bloc , state ,event>  , services , =>bloc

  ///Bloc 1
  @override
  // Widget build(BuildContext context) {//context=>
  //    return BlocProvider( //GetMaterialApp
  //       create: (context)=>Counter2Bloc(),//create bloc
  //   child:
  //       BlocConsumer<Counter2Bloc,Counter2State>(//Getx, obx
  //           listener: (context ,state){},
  //           builder: (context ,state){//context =>bloc
  //             return  Center(
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children:   [
  //                   Text('Counter ${state.counter}',style: TextStyle(fontSize: 35.sp),),//padding .all
  //
  //                   SizedBox(height: 20.h,),
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       FloatingActionButton(onPressed: (){
  //                         context.read<Counter2Bloc>().add(IncrementEvent());
  //                         //event IncreaseEvent
  //                       },child: Icon(Icons.add),),
  //                       SizedBox(width: 20.w,),
  //                       FloatingActionButton(onPressed: (){
  //                         //DecrementEvent
  //                         //event DecreaseEvent
  //                         context.read<Counter2Bloc>().add(DecrementEvent());
  //
  //                       },child: Icon(Icons.remove),),
  //                       SizedBox(width: 20.w,),
  //
  //                     ],
  //                   ),
  //                   // SizedBox(height: 20.h,),
  //                   //
  //                   // Container(
  //                   //   color: Colors.red,
  //                   //   // width: double.infinity,
  //                   //   width: MediaQuery.of(context).size.width/2.w,//Get.width/2.w
  //                   //   height: MediaQuery.of(context).size.height/20.h,
  //                   // ),
  //                   // SizedBox(height: 20.h,),
  //                   //
  //                   // Row( //3
  //                   //   children: [
  //                   //     Expanded(
  //                   //       flex: 1,
  //                   //       child: Container(
  //                   //         color: Colors.red,
  //                   //         height: MediaQuery.of(context).size.height/20.h,
  //                   //         margin: EdgeInsets.only(right: 20.w),
  //                   //         padding: EdgeInsets.all(  10.sp),
  //                   //         child: Text('hello'),
  //                   //       ),
  //                   //     ),
  //                   //     Expanded(
  //                   //       flex: 1,
  //                   //       child: Container(
  //                   //         // width: 180,
  //                   //         color: Colors.green,
  //                   //         child: Text('hello'),
  //                   //         height: MediaQuery.of(context).size.height/20.h,
  //                   //
  //                   //       ),
  //                   //     )
  //                   //   ],
  //                   // )
  //                 ],
  //               ),
  //             );
  //
  //           }
  //
  //   ));
  // }
  ///cubit
  //   @override
//   Widget build(BuildContext context) {//context=>
// return BlocProvider( //GetMaterialApp
//         create: (context)=>CounterCubit(),//create cubit
//     child:
//         BlocConsumer<CounterCubit,CounterState>(//Getx, obx
//             listener: (context ,state){},
//             builder: (context ,state){//context =>bloc
//               final cubit =CounterCubit.get(context);
//
//               return  Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children:   [
//                     Text('Counter ${cubit.number} ',style: TextStyle(fontSize: 35.sp),),//padding .all
//
//                     SizedBox(height: 20.h,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FloatingActionButton(onPressed: (){
//                           cubit.increase();
//                         },child: Icon(Icons.add),),
//                         SizedBox(width: 20.w,),
//                         FloatingActionButton(onPressed: (){
//                           cubit.decrease();
//
//                         },child: Icon(Icons.remove),),
//                         SizedBox(width: 20.w,),
//
//                       ],
//                     ),
//
//                   ],
//                 ),
//               );
//
//             }
//
//     ));
//   }
  ///Bloc 2

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    body: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                        BlocBuilder<Counter2Bloc, CounterState2>
                          (builder: (context, state){
                            if(state is CounterInitial){
                              return Text('Conter 0');
                            }
                            else if(state is CounterChangeState){
                              return Text('Conter ${state.num}');
                            }
                            return  SizedBox();

                        }
                        ),

                        SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              BlocProvider.of<Counter2Bloc>(context).add(IncrementEvent());
                              // context.read<Counter2Bloc>().add(IncrementEvent());

                            },child: Icon(Icons.add),),
                            SizedBox(width: 20.w,),
                            FloatingActionButton(onPressed: (){
                              context.read<Counter2Bloc>().add(DecrementEvent());
                              // context.read<Counter2Bloc>().add(ResetEvent());
                            },child: Icon(Icons.remove),),
                            SizedBox(width: 20.w,),

                          ],
                        ),]
                        ),
  ));
  }


}
