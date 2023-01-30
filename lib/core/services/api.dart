import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'api.g.dart';

@retrofit.RestApi()
abstract class Api {
  factory Api(Dio dio, {required String baseUrl}) = _Api;

  // @retrofit.POST('/api/supplier/login')
  // Future<LoginResponseModel> login({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.POST('/api/supplier/verify-OTP')
  // Future<VerifyResponseModel> verify({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/address/cities-by-state')
  // Future<CitiesResponseModel> cities({
  //   @retrofit.Query('state_id') required String state_id,
  // });
  //
  // @retrofit.GET('/api/address/states/all')
  // Future<StatesResponseModel> states({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/product/raw_materials/all')
  // Future<MaterialResponseModel> material({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/product/packaging/all')
  // Future<PackagingResponseModel> packaging({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/supplier/home/page')
  // Future<HomepageResponseModel> homepage({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/supplier/potential_order')
  // Future<PotentialResponseModel> potentialOrder({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/supplier/po/fetch/supplier-id')
  // Future<PurchaseOrderResponseModel> purchaseOrder({
  //   @retrofit.Query('id') required String supplierId,
  // });
  //
  // @retrofit.POST('/api/supplier/register')
  // Future<RegistrationResponseModel> registerSupplier({
  //   @retrofit.Body() required Map<String, dynamic> postBody,
  // });
  //
  // @retrofit.GET('/api/supplier/payment/fetch-all')
  // Future<PaymentResponseModel> payment({
  //   @retrofit.Query('supplier_id') required String supplier_id,
  // });
}
