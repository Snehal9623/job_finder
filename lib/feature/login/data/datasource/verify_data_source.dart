//
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../../../core/services/base_api.dart';
// import '../model/verifyOtp/verify_response_model.dart';
// //part of 'chopper_service.dart';
//
// abstract class VerifyDataSource {
//   Future<VerifyResponseModel> verify({required String otp,required String request_id});
//   Future<String?> getAuthToken();
// }
//
// class VerifyDataSourceImpl extends BaseApi implements VerifyDataSource {
//
//   VerifyDataSourceImpl({required String baseUrl}) : super(baseUrl);
//
//   @override
//   Future<VerifyResponseModel> verify({required String otp,required String request_id}) async {
//     final Map<String, dynamic> request = {'otp': otp,'request_id':request_id};
//     final response = await apiClient.verify(postBody: request);
//     return response;
//   }
//
//   @override
//   Future<String?> getAuthToken() async {
//     SharedPreferences pre = await SharedPreferences.getInstance();
//     String token = pre.getString("token") ?? "";
//     print("tokennn"+token);
//
//     // final Map<String, dynamic> request = {};
//     // final response = await apiClient.verify(postBody: request);
//     // return response.result!.token;
//   }
//
// }