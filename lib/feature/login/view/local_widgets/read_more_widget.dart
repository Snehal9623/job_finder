import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/app_constants.dart';

class ReadMoreWidget extends StatefulWidget {
  const ReadMoreWidget({Key? key}) : super(key: key);

  @override
  State<ReadMoreWidget> createState() => _ReadMoreWidgetState();
}

class _ReadMoreWidgetState extends State<ReadMoreWidget> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
            ),
            child: Text(
              "Location",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
            ),
            child: Text(
              "Overlook Avenue, Belleville, NJ, USA",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Container(
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                shape: BoxShape.rectangle,
              ),
              child: GoogleMap(
                // on below line setting camera position
                initialCameraPosition: _kGoogle,
                // on below line we are setting markers on the map
                markers: Set<Marker>.of(_markers),
                // on below line specifying map type.
                mapType: MapType.normal,
                myLocationButtonEnabled: false,
                // on below line setting user location enabled.
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                // on below line setting compass enabled.
                // on below line specifying controller on map complete.
                // onMapCreated: (GoogleMapController controller){
                //   _controller!.complete(controller);
                // },
                onMapCreated: (GoogleMapController controller) {
                  _mapController = controller;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h, top: 15.h),
            child: Text(
              "Informations",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Position",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "Senior Designer",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Container(
              height: 0.5,
              decoration: BoxDecoration(color: Color(0XFFDEE1E7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Qualification",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "Bachelor’s Degree",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 20.h,
            ),
            child: Container(
              height: 0.5,
              decoration: BoxDecoration(color: Color(0XFFDEE1E7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Experience",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "3 Years",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Container(
              height: 0.5.h,
              decoration: BoxDecoration(color: Color(0XFFDEE1E7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Job Type",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "Full-Time",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Container(
              height: 0.5.h,
              decoration: BoxDecoration(color: Color(0XFFDEE1E7)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Specialization",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "Design",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Container(
              height: 0.5,
              decoration: BoxDecoration(color: Color(0XFFDEE1E7)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "Facilities and Others",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textColorJobs, fontFamily: 'DM Sans', letterSpacing: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Medical",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Dental",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Technical Cartification",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Meal Allowance",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Regular Hours",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(children: const [
              Text(
                "\u2022",
                style: TextStyle(fontSize: 20),
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: Text(
                  "Mondays-Fridays",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColor, fontFamily: 'Open Sans', letterSpacing: 0.7),
                ), //text
              )
            ]), //
          ),
        ],
      ),
    );
  }
}
