// import 'dart:async';
// import 'dart:math';
//
// import 'package:biofuel_flutter/core/data/local/global_storage.dart';
// import 'package:biofuel_flutter/feature/login/data/model/sendotp/login_response_model.dart';
// import 'package:biofuel_flutter/feature/login/data/model/verifyOtp/verify_response_model.dart';
// import 'package:biofuel_flutter/feature/login/domain/repository/login_repository.dart';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// part 'login_event.dart';
// part 'login_state.dart';
//
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final LoginRepository loginRepository;
//   final GlobalStorage globalStorage;
//   String _requestId = '';
//
//   LoginBloc({required this.loginRepository, required this.globalStorage}) : super(LoginInitial()) {
//     on<LoginEvent>((event, emit) {});
//     on<LoginSendOTP>(_mapSendOTPToState);
//     on<LoginVerifyOTP>(_mapVerifyOTPToState);
//   }
//
//   /// --------- [HANDLER] Send OTP ---------------- ///
//   FutureOr<void> _mapSendOTPToState(LoginSendOTP event, Emitter<LoginState> emit) async {
//     try {
//       emit(const LoginLoading(message: 'Sending OTP....'));
//
//       /// Clean phone number
//       var phone = event.phoneNumber;
//       if (event.phoneNumber.contains("+91")) {
//         phone = phone.replaceAll("+91", "");
//       }
//
//       final loginResponse = await loginRepository.login(phone);
//
//       if (loginResponse.isLeft()) {
//         throw 'Login Response Error';
//       }
//
//       late LoginResponseModel res;
//       loginResponse.map((r) => res = r);
//       _requestId = res.result.request_id;
//
//       emit(LoginOTPSent());
//     } catch (error) {
//       emit(LoginError(error: error.toString()));
//     }
//   }
//
//   FutureOr<void> _mapVerifyOTPToState(LoginVerifyOTP event, Emitter<LoginState> emit) async {
//     try {
//       emit(const LoginLoading(message: 'Verifying OTP...'));
//
//       final verifyResponse = await loginRepository.verify(event.otp, _requestId);
//       if (verifyResponse.isLeft()) {
//         throw 'OTP Verification Error';
//       }
//
//       late VerifyResponseModel res;
//       verifyResponse.map((r) => res = r);
//       globalStorage.saveToken(accessToken: res.result!.token);
//       emit(LoginSuccess());
//     } catch (error) {
//       emit(LoginError(error: error.toString()));
//     }
//   }
// }
