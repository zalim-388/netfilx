import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netfilx/bloc/netflix_bloc.dart';
import 'package:netfilx/ui/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    return BlocProvider(
        create: (context) => NetflixBloc(),
        child: ScreenUtilInit(
          designSize:
              Size(360, 800), // Define your design size (for example, iPhone X)
          builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false, home: Splashscreen()),
        ));
  }
}
