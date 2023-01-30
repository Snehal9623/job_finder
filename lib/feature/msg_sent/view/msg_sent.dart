import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/app.dart';
import 'package:job_finder/feature/Homepage/view/homepage.dart';
import 'package:job_finder/feature/login/view/login_form.dart';
import 'package:job_finder/utils/app_color.dart';
import 'package:job_finder/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/app_constants.dart';
import '../../logo/view/logo.dart';

class MessageSent extends StatefulWidget {
  const MessageSent({Key? key}) : super(key: key);

  @override
  State<MessageSent> createState() => MessageSentPage();
}

class MessageSentPage extends State<MessageSent> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();
  // final LoginBloc _loginBloc = LoginBloc(
  //     loginRepository: GetIt.instance<LoginRepository>(),
  //     globalStorage: GetIt.instance<GlobalStorage>());
  bool _isOTPSent = false;
  bool _isHintShown = false;
  String _otp = '';
  bool passwordVisible = false;
  bool value = false;

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
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
            ),

            /// ------- [Text] Welcome Text -------------- ///
            Center(
              child: Text(
                MyLoginConstants.successfullyText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 30.sp,
                  color: AppColors.logoBackground,
                ),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 40.h, right: 40.h),
                child: Text(
                  MyLoginConstants.passwordUpdated,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: AppColors.introTextColor,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Image.asset(
                AppImages.msgSentImg,
                height: 120.h,
                width: 120.w,
              ),
            ),

            SizedBox(
              height: 70.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Container(
                    height: 50.h,
                    width: 280.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonBackground,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Center(
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 50.h,
                    width: 280.w,
                    decoration: BoxDecoration(
                      color: AppColors.lavenderButtonBackground,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Center(
                      child: Text(
                        "BACK TO LOGIN",
                        style: TextStyle(color: AppColors.buttonBackground, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Shows user hint
// void requestHint() async {
//   final res = await SmartAuth().requestHint(
//     isPhoneNumberIdentifierSupported: true,
//     isEmailAddressIdentifierSupported: false,
//     showCancelButton: true,
//   );
//   _isHintShown = true;
//   _controller.text = res?.id ?? '';
//   _controller.selection = TextSelection.fromPosition(
//       TextPosition(offset: _controller.text.length));
// }

}
