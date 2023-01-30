import 'dart:async';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/feature/intro_screen/view/intro_screen.dart';

import 'feature/logo/view/logo.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _dio = Dio(
    BaseOptions(
      sendTimeout: const Duration(seconds: 30).inMilliseconds,
      connectTimeout: const Duration(seconds: 30).inMilliseconds,
      receiveTimeout: const Duration(seconds: 30).inMilliseconds,
    ),
  );

  @override
  void initState() {
    super.initState();
    _dio.interceptors.add(ChuckerDioInterceptor());

    /// Initialize Easy Loader
    configLoading();

  }


  @override
  Widget build(BuildContext context) {
    /// Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorObservers: [ChuckerFlutter.navigatorObserver],
          debugShowCheckedModeBanner: false,
          title: 'Job Finder',
          builder: EasyLoading.init(),
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          home: child,
        );
      },
      child: const Logo(),
    );
  }

  void configLoading() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.cubeGrid
      ..loadingStyle = EasyLoadingStyle.dark
      ..maskColor = Colors.black26
      ..maskType = EasyLoadingMaskType.custom
      ..indicatorSize = 45.0
      ..backgroundColor = Colors.black26
      ..radius = 10.0
      ..userInteractions = false
      ..dismissOnTap = false;
  }
}
