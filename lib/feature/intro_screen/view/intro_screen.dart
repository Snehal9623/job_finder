import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/feature/splash/presentation/splash_screen.dart';
import 'package:job_finder/utils/app_color.dart';

import '../../../utils/app_images.dart';
import '../../login/view/login_form.dart';
import '../../logo/view/logo.dart';

class Introduction extends StatefulWidget{
  const Introduction({Key? key}) : super(key: key);
  @override
  State<Introduction> createState() => IntroductionPage();

}
class IntroductionPage extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        Padding(padding:EdgeInsets.only(right: 20,top: 30),
      child:
            Text("Jobspot",textAlign: TextAlign.right,style: TextStyle(
              color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,
            ),),
        ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 30),
                  child:Center(
                      child: Image.asset(AppImages.introImage,
                        height: 270.h,
                        width: 270.h,
                        alignment: Alignment.center,)
                  ),
                ),


                Padding(padding: EdgeInsets.only(left: 20,top: 40),
                    child: Image.asset(AppImages.dreamJobImg,
                      height: 100.h,
                      width: 200.h,
                      alignment: Alignment.center,)
                ),
                SizedBox(
                  height:20,
                ),
                Padding(padding: EdgeInsets.only(left: 20,),
                  child: Text("Explore all the most exciting job roles based on your interest and study major.",
                  style: TextStyle(
                    color:AppColors.introTextColor,
                  ),),
                ),
              ],
            ),

            Padding(padding:EdgeInsets.only(right: 20),
              child: FloatingActionButton(onPressed: ()=>Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:
                        (context) =>
                        LoginForm()
                    )
                ),
                  backgroundColor: AppColors.logoBackground,
                  child: const Icon(Icons.arrow_forward,color: Colors.white,),
                )
            ),

          ],
        )



    );
  }
}