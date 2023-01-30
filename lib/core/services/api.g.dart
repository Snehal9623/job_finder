// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _Api implements Api {
  _Api(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  // @override
  // Future<LoginResponseModel> login({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio
  //       .fetch<Map<String, dynamic>>(_setStreamType<LoginResponseModel>(Options(
  //     method: 'POST',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/login',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = LoginResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<VerifyResponseModel> verify({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<VerifyResponseModel>(Options(
  //     method: 'POST',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/verify-OTP',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = VerifyResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<CitiesResponseModel> cities({required state_id}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{r'state_id': state_id};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<CitiesResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/address/cities-by-state',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = CitiesResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<StatesResponseModel> states({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<StatesResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/address/states/all',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = StatesResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<MaterialResponseModel> material({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<MaterialResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/product/raw_materials/all',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = MaterialResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<PackagingResponseModel> packaging({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<PackagingResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/product/packaging/all',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = PackagingResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<HomepageResponseModel> homepage({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<HomepageResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/home/page',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = HomepageResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<PotentialResponseModel> potentialOrder({required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<PotentialResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/potential_order',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = PotentialResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<PurchaseOrderResponseModel> purchaseOrder(
  //     {required supplierId}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{r'id': supplierId};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<PurchaseOrderResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/po/fetch/supplier-id',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = PurchaseOrderResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<RegistrationResponseModel> registerSupplier(
  //     {required postBody}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(postBody);
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<RegistrationResponseModel>(Options(
  //     method: 'POST',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/register',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = RegistrationResponseModel.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<PaymentResponseModel> payment({required supplier_id}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{r'supplier_id': supplier_id};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<PaymentResponseModel>(Options(
  //     method: 'GET',
  //     headers: _headers,
  //     extra: _extra,
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/supplier/payment/fetch-all',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = PaymentResponseModel.fromJson(_result.data!);
  //   return value;
  // }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
