//
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
//
// import '../../../../core/error/failure.dart';
// import '../../../../core/network/network_info.dart';
// import '../../data/datasource/login_data_source.dart';
// import '../../data/datasource/verify_data_source.dart';
// import '../../data/model/sendotp/login_response_model.dart';
// import '../../data/model/verifyOtp/verify_response_model.dart';
// import 'login_repository.dart';
//
// class LoginRepositoryImpl implements LoginRepository {
//   final LoginDataSource loginDataSource;
//   final VerifyDataSource verifyDataSource;
//   final NetworkInfo networkInfo;
//
//   LoginRepositoryImpl({required this.loginDataSource, required this.verifyDataSource, required this.networkInfo});
//
//   @override
//   Future<Either<Failure, LoginResponseModel>> login(String mobile) async {
//     try {
//       var response = await loginDataSource.login(mobile: mobile);
//       return Right(response);
//     } on DioError catch (error) {
//       return Left(ServerFailure(error.message));
//     }
//   }
//
//   @override
//   Future<Either<Failure, VerifyResponseModel>> verify(String otp, String requestId) async {
//     try {
//       var response = await verifyDataSource.verify(
//         otp: otp,
//         request_id: requestId,
//       );
//       return Right(response);
//     } on DioError catch (error) {
//       return Left(ServerFailure(error.message));
//     }
//   }
// }
