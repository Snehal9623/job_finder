import 'package:get_storage/get_storage.dart';

class GlobalStorage {
  final GetStorage _box;
  const GlobalStorage(this._box);

  final String _tokenKey = 'accessToken';

  /// Save Token
  void saveToken({required String accessToken}) {
    if (accessToken.isEmpty) {
      throw 'Access Token is empty';
    }
    _box.write(_tokenKey, accessToken);
  }

  String getToken() {
    String? token = _box.read(_tokenKey);
    if (token == null || token.isEmpty) {
      throw 'Token not found in local storage';
    }
    return token;
  }
}
