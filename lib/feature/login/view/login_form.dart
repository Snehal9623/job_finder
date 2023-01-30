import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/app.dart';
import 'package:job_finder/feature/forgot_password/view/forgot_password_form.dart';
import 'package:job_finder/utils/app_color.dart';
import 'package:job_finder/utils/app_images.dart';

import '../../../utils/app_constants.dart';
import '../../logo/view/logo.dart';
import '../../sign_up/view/sign_up.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => LoginFormPage();
}

class LoginFormPage extends State<LoginForm> {
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
                MyLoginConstants.welcomeText,
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
                  MyLoginConstants.loginPageText,
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
              height: 80.h,
            ),

            Padding(
              padding: EdgeInsets.only(left: 30.h, right: 30.h),
              child: Text(
                MyLoginConstants.email,
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: AppColors.logoBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.h, right: 30.h),
              child: Container(
                height: 45.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: AppColors.shadowColor, blurRadius: 62, spreadRadius: 10, offset: Offset(0, 4)
                        // blurRadius: .0,spreadRadius: 10,
                        ),
                  ],
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  // onTap: () {
                  //   /// Show hint only one time
                  //   /// * Works only on android platform
                  //   if (!_isHintShown && Platform.isAndroid) {
                  //     requestHint();
                  //   }
                  // },
                  style: TextStyle(color: AppColors.hintTextColor, fontSize: 12),
                  textAlign: TextAlign.start,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (controller) {
                    if (controller!.isEmpty) {
                      return MyLoginConstants.validationOfEmptyTextfield;
                    } else if (!controller.contains("@")) {
                      return MyLoginConstants.validationOfCorrectMobile;
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: AppColors.hintTextColor, fontSize: 12),
                    hintText: MyLoginConstants.emailHint,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.h, right: 30.h),
              child: Text(
                "Password",
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: AppColors.logoBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.h, right: 30.h),
              child: Container(
                height: 45.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: AppColors.shadowColor, blurRadius: 62, spreadRadius: 10, offset: Offset(0, 4)
                        // blurRadius: .0,spreadRadius: 10,
                        ),
                  ],
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  // onTap: () {
                  //   /// Show hint only one time
                  //   /// * Works only on android platform
                  //   if (!_isHintShown && Platform.isAndroid) {
                  //     requestHint();
                  //   }
                  // },
                  obscureText: passwordVisible,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppColors.hintTextColor,
                    fontSize: 12,
                  ),
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (controller) {
                    if (controller!.isEmpty) {
                      return MyLoginConstants.validationOfEmptyTextfield;
                    } else if (!controller.contains("@")) {
                      return MyLoginConstants.validationOfCorrectMobile;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          color: AppColors.iconVisibility,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        }),
                    isDense: false,
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: AppColors.hintTextColor, fontSize: 12),
                    hintText: MyLoginConstants.passwordHint,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: Container(
                    alignment: Alignment.center,
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.lavenderColor,
                    ),
                    child: Checkbox(
                      activeColor: AppColors.lavenderColor,
                      checkColor: AppColors.logoBackground,
                      value: this.value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(color: AppColors.textLavenderColor, fontSize: 12),
                ),
                SizedBox(
                  width: 80.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotPasswordForm()));
                  },
                  child: Text(
                    'Forgot Password ?',
                    textScaleFactor: 1,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.logoBackground),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 50.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonBackground,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Center(
                      child: Text(
                        "LOGIN",
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
                    width: 250.w,
                    decoration: BoxDecoration(
                      color: AppColors.lavenderButtonBackground,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.google1Logo,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                          const Text(
                            "SIGN IN WITH GOOGLE",
                            style: TextStyle(color: AppColors.buttonBackground, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You don't have an account yet?  ",
                    style: TextStyle(color: AppColors.buttonBackground, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpForm()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: AppColors.orangeColor, fontSize: 12, decoration: TextDecoration.underline, fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
                    ),
                  ),
                ],
              ),
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
