import 'package:flutter/widgets.dart';

abstract class AppIcons {
  AppIcons._();

  static const String _assetPath = "assets/icons/";
  static String get locationIcon => _assetPath + 'location.png';
  static String get uploadDocumentIcon => _assetPath + 'document.png';
  static String get backArrow => _assetPath + 'backarrow.png';
  static String get cancel => _assetPath + 'close.png';
  static String get mike => _assetPath + 'mic_icon.png';
  static String get locationSvg => _assetPath + 'location.svg';
  static String get documentSvg => _assetPath + 'uploadDocument.svg';
  static String get circularArrowSvg => _assetPath + 'circular_arrow.svg';




}

