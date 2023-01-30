// import 'package:biofuel_flutter/core/error/failure.dart';
// import 'package:biofuel_flutter/core/network/network_info.dart';
// import 'package:biofuel_flutter/feature/login/data/datasource/verify_data_source.dart';
// import 'package:biofuel_flutter/feature/login/domain/repository/verify_repository.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
//
// import '../../data/model/verifyOtp/verify_response_model.dart';
//
// class VerifyRepositoryImpl implements VerifyRepository {
//   final VerifyDataSource verifyDataSource;
//   final NetworkInfo networkInfo;
//
//   VerifyRepositoryImpl({required this.verifyDataSource, required this.networkInfo});
//
//   @override
//   Future<Either<Failure, VerifyResponseModel>> verify(String otp, String request_id) async {
//     var isConnected = await networkInfo.isConnected;
//     if (isConnected) {
//       try {
//         var response = await verifyDataSource.verify(
//           otp: otp,
//           request_id: request_id,
//         );
//         return Right(response);
//       } on DioError catch (error) {
//         return Left(ServerFailure(error.message));
//       }
//     } else {
//       return Left(ConnectionFailure());
//     }
//   }
// }
