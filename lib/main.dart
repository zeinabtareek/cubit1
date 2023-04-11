import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/counter_bloc/counter2_bloc.dart';
import 'package:untitled/screens/counter_screen.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(460, 847),//
    builder: (BuildContext, Widget) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    ]);
    return  BlocProvider(create: (context)=>Counter2Bloc(),
    child:  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: CounterScreen(),)
    ),
    );
        });
  }
}

