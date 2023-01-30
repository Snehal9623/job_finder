// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
//
// import '../../../../core/error/failure.dart';
// import '../../../../core/usecase/usecase.dart';
// import '../../data/model/sendotp/login_response_model.dart';
// import '../repository/login_repository.dart';
//
// class Login implements UseCase<LoginResponseModel, LoginParams> {
//   final LoginRepository loginRepository;
//
//   Login({required this.loginRepository});
//
//   @override
//   Future<Either<Failure, LoginResponseModel>>? call(LoginParams params) async {
//     return await loginRepository.login(params.mobile);
//   }
// }
//
// class LoginParams extends Equatable {
//   final String mobile;
//
//   const LoginParams({required this.mobile});
//
//   @override
//   List<Object> get props => [mobile];
//
//   @override
//   String toString() {
//     return 'ParamsSendOtp{mobile: $mobile}';
//   }
// }
//
// class VerifyParams extends Equatable {
//   final String otp;
//   final String requestId;
//
//   const VerifyParams({required this.otp, required this.requestId});
//
//   @override
//   List<Object> get props => [otp, requestId];
//
//   @override
//   String toString() {
//     return 'ParamsVerifyOtp{otp: $otp, request_id : $requestId}';
//   }
// }
