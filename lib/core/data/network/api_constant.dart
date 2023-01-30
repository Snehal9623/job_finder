// ignore_for_file: non_constant_identifier_names

class APIConstants {
  static var BASE_URL = 'http://devapi.biofuelsjunction.com';

  /// Dispatch
  static var NOTIFICATION_MENU = '$BASE_URL/api/notification/menu';

  /// Suppliers
  /// fetch supplier po by supplier-id
  static var SPO_BY_ID = "$BASE_URL/api/supplier/po/fetch/supplier-id";
  static var CREATE_NOTIFICATION = "$BASE_URL/api/notification/create";

  /// Get All Notifications
  static var GET_NOTIFICATIONS = "$BASE_URL/api/supplier/fetch/all/notifications/";
  static var CREATE_CHALLAN = "$BASE_URL/api/supplier/generate-challan/";
}
