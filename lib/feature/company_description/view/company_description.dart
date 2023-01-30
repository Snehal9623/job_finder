import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:job_finder/utils/app_color.dart';
import 'package:job_finder/utils/app_images.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../login/view/local_widgets/read_more_widget.dart';

class CompanyDescription extends StatefulWidget {
  const CompanyDescription({Key? key}) : super(key: key);

  @override
  State<CompanyDescription> createState() => CompanyDescriptionPage();
}

class CompanyDescriptionPage extends State<CompanyDescription> {
  // final LoginBloc _loginBloc = LoginBloc(
  //     loginRepository: GetIt.instance<LoginRepository>(),
  //     globalStorage: GetIt.instance<GlobalStorage>());
  bool _isOTPSent = false;
  bool _isHintShown = false;
  bool _isDiscriptionShown = false;

  String _otp = '';
  bool passwordVisible = false;
  bool value = false;
  bool jobSaved = false;

  List galleryImages = [
    AppImages.galleryImageFirst,
    AppImages.galleryImageSecond,
    AppImages.galleryImageThird,
    AppImages.galleryImageFourth,
    AppImages.galleryImageFifth,
    AppImages.galleryImageSixth,
    AppImages.galleryImageSeventh,
  ];
  @override
  void initState() {
    super.initState();
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
            backgroundColor: AppColors.white,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: AppColors.hintTextColor, size: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Image.asset(
                            AppImages.options,
                            height: 20.h,
                            width: 20.w,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      height: 150.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                height: 100.h,
                                decoration: const BoxDecoration(
                                  color: AppColors.greyBackground,
                                ),
                              ),
                              Positioned(
                                top: 10.h,
                                child: Image.asset(
                                  AppImages.logoGoogle,
                                  height: 50.h,
                                ),
                              ),
                              Positioned(
                                  bottom: 40,
                                  child: Column(
                                    children: [
                                      Text(
                                        "UI/UX Designer",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Google",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.hintTextColor, fontFamily: 'DM Sans'),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            alignment: Alignment.center,
                                            AppImages.eclipse,
                                            height: 5,
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "California",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.hintTextColor, fontFamily: 'DM Sans'),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            alignment: Alignment.center,
                                            AppImages.eclipse,
                                            height: 5,
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "1 day ago",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.hintTextColor, fontFamily: 'DM Sans'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                            child: Container(
                                height: 40.h,
                                width: 150.w,
                                // width: 250.w,
                                decoration: BoxDecoration(
                                  color: AppColors.buttonBackground,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Description",
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                                  ),
                                )),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                            child: Container(
                                height: 40.h,
                                width: 150.w,
                                // width: 250.w,
                                decoration: BoxDecoration(
                                  color: AppColors.lavenderButtonBackground,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Company",
                                    style: TextStyle(color: AppColors.buttonBackground, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                                  ),
                                )),
                          )),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Text(
                      "About Company",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: Text(
                        "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.8),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: Text(
                        "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Website",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.lavenderBackground, fontFamily: 'Open Sans', letterSpacing: 0.7),
                          text: "https://www.google.com",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "https://www.google.com";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }),
                    ])),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Industry",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Internet product",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Employee size",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "132,121 Employees",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Head office",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Mountain View, California, Amerika Serikat",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Type",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Multinational company",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Since",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "1998",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Specialization",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Search technology, Web computing, Software and Online advertising",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                    child: Text(
                      "Company Gallery",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                    ),
                  ),
                  // ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: galleryImages.map((images) {
                  //     return Container(
                  //       height: 160.h,
                  //       padding: EdgeInsets.all(10),
                  //       child: Container(
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Image.asset(images[index])),
                  //     );
                  //   }).toList(),
                  // ),
                  Container(
                    height: 160.h,
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                                height: 160.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  // border: Border.all(color: Colors.black, width: 1.w),
                                ),
                                child: Image.asset(
                                  galleryImages[index],
                                  fit: BoxFit.cover,
                                )));
                      },
                      itemCount: galleryImages.length,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                        GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                  height: 50.h,
                                  width: 250.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.buttonBackground,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "APPLY NOW",
                                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                                    ),
                                  )),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
