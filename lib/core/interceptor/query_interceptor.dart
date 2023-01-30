import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../feature/login/data/datasource/verify_data_source.dart';
import '../navigation/navigation_service.dart';
import '../storage/local_storage.dart';

/// Middleware to catch request and response
class QueryInterceptor extends InterceptorsWrapper {
  static final String _contentType = 'content-type';
  static final String _applicationJson = 'application/json';
  static final String _authorization = 'Authorization';
  static final String _xBiofuelToken = 'x-biofuel-token';
  // static final String _bearer = 'Bearer';

  final String? identityBaseUrl;
  final bool expectResponseJson;

  /// [ignoreToken] is true. Then we don't need to pass access token to headers.
  /// Default is false.
  ///
  final bool ignoreToken;

  final Connectivity connectivity = Connectivity();

  final bool ignoreConnection;

  // Get Auth token use case
  // final VerifyDataSource verifyDataSource;

  QueryInterceptor(
      {this.expectResponseJson = false,
      this.identityBaseUrl,
      this.ignoreConnection = false,
      this.ignoreToken = false});

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!ignoreConnection) {
      final result = await connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return _validateConnection(options, handler);
      }
    }
    if (!ignoreToken) {

      var _tokenstore =  await MySharedPreferences.instance.getStringValue('access_token');
      options.headers.addAll(<String, String>{_xBiofuelToken: _tokenstore ?? ""});

    }
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    final isInValidAuthenticationResponse = await _isInValidAuthenticationResponse(response);
    if (isInValidAuthenticationResponse) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.response,
        error: 'Invalid token or current token is expired. Please try logging in again!',
      );
    }
    if (!isResponseOkButNoContent(response) && expectResponseJson) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.response,
        error: 'Response format is not a json response',
      );
    }

    return super.onResponse(response, handler);
  }

  /// Return null if it shouldn't refresh.
  /// Otherwise, return refresh token.
  ///
  Future<bool> _isInValidAuthenticationResponse(Response? response) async {
    return response?.statusCode == 401;
    // final refreshToken = await authenticationLocalRepository.getRefreshToken();
    // if (refreshToken == null) {
    //   return null;
    // }
    // return refreshToken;
  }

  bool isResponseOkButNoContent(Response response) =>
      response.statusCode == 204;
  bool? isResponseHeaderTypeJson(Map<String, List<String>> headerMap) {
    return headerMap[_contentType]
        ?.firstWhere((element) => element.contains(_applicationJson),
            orElse: () => '')
        .contains(_applicationJson);
  }

  Future _validateConnection(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (NavigationService.globalNavigatorKey.currentContext == null) {
      return;
    }
    return showDialog(
        context: NavigationService.globalNavigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Container();
        }).then((v) {
      return onRequest(options, handler);
    });
  }
}
