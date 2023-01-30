// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../utils/app_color.dart';
// import '../../../../utils/app_constants.dart';
//
// class OTPWidget extends StatefulWidget {
//   final int length;
//   final Function onChange;
//   final Function onTapResend;
//
//   /// [OTPWidget] takes 2 inputs.
//   /// [length] : Number of input fields
//   /// [onChange] : Called every time when input changes
//   /// [onTapResend] : Called when otp resend text is clicked
//   const OTPWidget({Key? key, required this.length, required this.onChange, required this.onTapResend}) : super(key: key);
//
//   @override
//   State<OTPWidget> createState() => _OTPWidgetState();
// }
//
// class _OTPWidgetState extends State<OTPWidget> {
//   List<TextEditingController> controllers = [];
//   String otp = '';
//
//   @override
//   void initState() {
//     for (int i = 0; i < widget.length; i++) {
//       controllers.add(TextEditingController());
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 30.w),
//       child: Column(
//         children: [
//           Text(
//             MyLoginConstants.enterOtp,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Aleo',
//               fontStyle: FontStyle.normal,
//               fontWeight: FontWeight.normal,
//               fontSize: 15.sp,
//               color: AppColors.black,
//             ),
//           ),
//           SizedBox(
//             height: 10.h,
//           ),
//           Text(
//             MyLoginConstants.enterOtpSent,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Aleo',
//               fontStyle: FontStyle.normal,
//               fontWeight: FontWeight.normal,
//               fontSize: 15.sp,
//               color: AppColors.black45,
//             ),
//           ),
//           SizedBox(
//             height: 10.h,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               widget.length,
//               (index) => _otpField(controller: controllers[index], index: index),
//             ),
//           ),
//           SizedBox(
//             height: 20.h,
//           ),
//           GestureDetector(
//             onTap: () => widget.onTapResend(),
//             child: Text(
//               MyLoginConstants.resendOtp,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'Aleo',
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.normal,
//                 fontSize: 18.0,
//                 color: AppColors.black45,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _otpField({required TextEditingController controller, required int index}) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 5.w),
//       width: 50.w,
//       height: 55.h,
//       child: Center(
//         child: TextField(
//           controller: controller,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.isEmpty && !(index == 0)) {
//               FocusScope.of(context).previousFocus();
//             }
//
//             if (value.length == 1 && !(index == widget.length - 1)) {
//               FocusScope.of(context).nextFocus();
//             }
//
//             if (value.isNotEmpty && otp.length != widget.length) {
//               otp += value;
//               widget.onChange(otp);
//             }
//
//             if (value.isEmpty) {
//               var split = otp.split("");
//               split.removeLast();
//               otp = split.join();
//               widget.onChange(otp);
//             }
//           },
//           showCursor: true,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: const InputDecoration(
//             isDense: true,
//             border: OutlineInputBorder(),
//             counter: Offstage(),
//             hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
//           ),
//         ),
//       ),
//     );
//   }
// }
