import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/app.dart';
import 'package:job_finder/feature/login/view/login_form.dart';
import 'package:job_finder/utils/app_color.dart';
import 'package:job_finder/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/app_constants.dart';
import '../../job_description/view/job_description_first.dart';
import '../../logo/view/logo.dart';
import '../../msg_sent/view/msg_sent.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => HomepagePage();
}

class HomepagePage extends State<Homepage> {
  final _loginFormKey = GlobalKey<FormState>();

  // final LoginBloc _loginBloc = LoginBloc(
  //     loginRepository: GetIt.instance<LoginRepository>(),
  //     globalStorage: GetIt.instance<GlobalStorage>());
  bool _isOTPSent = false;
  bool _isHintShown = false;
  String _otp = '';
  bool jobSaved = false;
  bool value = false;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 1: Business',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    // _emailController.text = "Brandonelouis@gmail.com ";
  }

  @override
  Widget build(BuildContext context) {
    return
        // BlocListener<LoginBloc, LoginState>(
        // bloc: _loginBloc,
        // listener: (context, state) {
        //   /// Show Loader
        //   if (state is LoginLoading) {
        //     EasyLoading.show(status: state.message);
        //   }
        //
        //   /// Login OTP Sent
        //   if (state is LoginOTPSent) {
        //     EasyLoading.dismiss();
        //     setState(() {
        //       _isOTPSent = true;
        //     });
        //   }
        //
        //   /// Login Success
        //   if (state is LoginSuccess) {
        //     EasyLoading.dismiss();
        //     Future.delayed(Duration.zero, () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const RegistrationForm()),
        //       );
        //     });
        //   }
        //
        //   /// Show error
        //   if (state is LoginError) {
        //     EasyLoading.dismiss();
        //     EasyLoading.showToast(state.error);
        //   }
        // },
        Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 20.h,
          // ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Orlando Diggs.",
                  style: TextStyle(color: AppColors.logoBackground, fontSize: 22.sp, fontFamily: 'DM Sans', fontWeight: FontWeight.w700),
                ),
                Container(width: 40.w, height: 40.h, alignment: Alignment.topRight, decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.fill, image: NetworkImage("https://picsum.photos/200/300")))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: Container(
              height: 170.h,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 135.h,
                    decoration: BoxDecoration(
                      color: AppColors.buttonBackground,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    // bottom: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "50% off",
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'DM Sans'),
                        ),
                        Text(
                          "take any courses",
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'DM Sans'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessageSent()));
                          },
                          child: Container(
                              height: 30.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: AppColors.orangeColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: const Center(
                                child: Text(
                                  "Join Now",
                                  style: TextStyle(color: AppColors.white, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'DM Sans'),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: Image.asset(
                      'assets/officeGirl.png',
                      height: 170.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: const Text(
              "Find Your Job",
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 150.h,
                  width: 140.w,
                  decoration: BoxDecoration(color: AppColors.lightBlueColor, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              AppImages.headHuntingImg,
                              height: 50.h,
                              width: 30.w,
                            ),
                            const Text(
                              "44.5k",
                              style: TextStyle(color: AppColors.logoBackground, fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Remote Job",
                              style: TextStyle(color: AppColors.logoBackground, fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      height: 66.h,
                      width: 150.w,
                      decoration: BoxDecoration(color: AppColors.lavenderColor, borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Center(
                          child: Column(
                            children: const [
                              Text(
                                "66.8k",
                                style: TextStyle(color: AppColors.logoBackground, fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Full Time",
                                style: TextStyle(color: AppColors.logoBackground, fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 66.h,
                      width: 150.w,
                      decoration: BoxDecoration(color: AppColors.orangeBox, borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Center(
                          child: Column(
                            children: const [
                              Text(
                                "38.9k",
                                style: TextStyle(color: AppColors.logoBackground, fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Part Time",
                                style: TextStyle(color: AppColors.logoBackground, fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: const Text(
              "Recent Job List",
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => JobDescription()));
                  },
                  child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.smallCircleBackground,
                                ),
                                padding: EdgeInsets.all(8),
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  AppImages.appleImg,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Product Designer",
                                    style: TextStyle(color: AppColors.textColorJobs, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Google inc .",
                                        style: TextStyle(color: AppColors.textColorJobs, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                                      ),
                                      Text(
                                        " California, USA",
                                        style: TextStyle(color: AppColors.textColorJobs, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 90.w,
                              ),
                              jobSaved
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            jobSaved = !jobSaved;
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        AppImages.saveImg,
                                        height: 20.h,
                                        width: 20.w,
                                      ))
                                  : GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            jobSaved = !jobSaved;
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        AppImages.saveImg,
                                        height: 20.h,
                                        width: 20.w,
                                        color: AppColors.orangeBox,
                                      )),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: const [
                              Text(
                                "15K",
                                style: TextStyle(color: AppColors.textColorJobs, fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Open Sans'),
                              ),
                              Text("/Mo", style: TextStyle(color: AppColors.textColorGrey, fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Open Sans')),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.greyContainer.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                                  child: const Text(
                                    "Senior designer",
                                    style: TextStyle(color: AppColors.textColor, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.greyContainer.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                                  child: const Text(
                                    "Full time",
                                    style: TextStyle(color: AppColors.textColor, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.orangeContainer.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                                  child: const Text(
                                    "Apply",
                                    style: TextStyle(color: AppColors.textColor, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )))),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: AppColors.iconColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.socialConnection, height: 20.h, width: 20.w, color: AppColors.iconColor),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 60,
              color: AppColors.buttonBackground,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_outline_rounded,
              color: AppColors.iconColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.savedImgBottomNav, height: 15.h, width: 15.w, color: AppColors.iconColor),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.hintTextColor,
        // fixedColor: AppColors.hintTextColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
