//
// import '../../../../core/services/base_api.dart';
// import '../model/sendotp/login_response_model.dart';
//
// abstract class LoginDataSource {
//   Future<LoginResponseModel> login({required String mobile});
// }
//
// class LoginDataSourceImpl extends BaseApi implements LoginDataSource {
//
//   LoginDataSourceImpl({required String baseUrl}) : super(baseUrl);
//
//   @override
//   Future<LoginResponseModel> login({required String mobile}) async {
//     final Map<String, dynamic> request = {'mobile': mobile};
//     final response = await apiClient.login(postBody: request);
//     return response;
//   }
//
// }