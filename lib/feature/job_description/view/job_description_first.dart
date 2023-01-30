import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:job_finder/feature/company_description/view/company_description.dart';
import 'package:job_finder/utils/app_color.dart';
import 'package:job_finder/utils/app_images.dart';
import 'package:location/location.dart';

import '../../login/view/local_widgets/read_more_widget.dart';

class JobDescription extends StatefulWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  State<JobDescription> createState() => JobDescriptionPage();
}

class JobDescriptionPage extends State<JobDescription> {
  // final LoginBloc _loginBloc = LoginBloc(
  //     loginRepository: GetIt.instance<LoginRepository>(),
  //     globalStorage: GetIt.instance<GlobalStorage>());
  bool _isOTPSent = false;
  bool _isHintShown = false;
  bool _isDiscriptionShown = false;

  String _otp = '';
  bool passwordVisible = false;
  bool value = false;

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(20.42796133580664, 80.885749655962),
    zoom: 14.4746,
  );
  GoogleMapController? _mapController;
  Location currentLocation = Location();
  Set<Marker> _markers = {};
  @override
  void initState() {
    super.initState();
    getLocation();
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
              height: 70,
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
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text(
                "Job Description",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDiscriptionShown = !_isDiscriptionShown;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.lavenderBackground.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                  ),
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: const Text(
                    "Read more",
                    style: TextStyle(color: AppColors.hintTextColor, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Open Sans'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Requirements",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'Open Sans', letterSpacing: 0.7),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ), //bullet text
                SizedBox(
                  width: 10,
                ), //space between bullet and text
                Expanded(
                  child: Text(
                    "Sed ut perspiciatis unde omnis iste natus error sit.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                  ), //text
                )
              ]), //
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ), //bullet text
                SizedBox(
                  width: 10,
                ), //space between bullet and text
                Expanded(
                  child: Text(
                    "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                  ), //text
                )
              ]), //
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ), //bullet text
                SizedBox(
                  width: 10,
                ), //space between bullet and text
                Expanded(
                  child: Text(
                    "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                  ), //text
                )
              ]), //
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ), //bullet text
                SizedBox(
                  width: 10,
                ), //space between bullet and text
                Expanded(
                  child: Text(
                    "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                  ), //text
                )
              ]), //
            ),
            SizedBox(
              height: 30,
            ),
            if (_isDiscriptionShown) ...[
              ReadMoreWidget(),
            ],
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CompanyDescription()));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                  child: Container(
                      height: 50.h,
                      // width: 250.w,
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
    );
  }

  void getLocation() async {
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc) {
      _mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
        zoom: 12.0,
      )));
      // setState(() {
      //   _markers.add(Marker(markerId: MarkerId('Home'), position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)));
      // });
    });
  }
}
