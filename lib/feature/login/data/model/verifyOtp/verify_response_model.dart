//
// import 'package:equatable/equatable.dart';
// import 'package:job_finder/feature/login/data/model/verifyOtp/verify_response.dart';
// import 'package:json_annotation/json_annotation.dart';
// part 'verify_response_model.g.dart';
//
// @JsonSerializable(explicitToJson: true)
// class VerifyResponseModel extends Equatable {
//
//   final String message;
//   final int status;
//   final VerifyResponse? result;
//
//   const VerifyResponseModel({required this.message, required this.status, required this.result});
//
//   @override
//   List<Object?> get props => [message, status, result];
//
//   factory VerifyResponseModel.fromJson(Map<String, dynamic> json) {
//     return _$VerifyResponseModelFromJson(json);
//   }
//
//   Map<String, dynamic> toJson() {
//     return _$VerifyResponseModelToJson(this);
//   }
//
// //
//
// }