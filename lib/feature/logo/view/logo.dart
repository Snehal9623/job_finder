import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/feature/splash/presentation/splash_screen.dart';
import 'package:job_finder/utils/app_color.dart';

import '../../../utils/app_images.dart';
import '../../intro_screen/view/intro_screen.dart';

class Logo extends StatefulWidget{
  const Logo({Key? key}) : super(key: key);
  @override
  State<Logo> createState() => LogoPage();

}
class LogoPage extends State<Logo> {



  @override void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Introduction()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.logoBackground,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(AppImages.appLogo,
                height: 50.h,
                alignment: Alignment.center,),


            SizedBox(
              height: 5.h ,
            ),
            Image.asset(AppImages.jobspotLogo,
              height: 20.h,
              width: 70.h,
              alignment: Alignment.center,)
          ],
        ),
      )
    );
  }
}