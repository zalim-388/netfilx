import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:netfilx/ui/Splashscreen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    return ScreenUtilInit(
      designSize: Size(360, 800), // Define your design size (for example, iPhone X)
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen()
      ),
    );
  }
}

 