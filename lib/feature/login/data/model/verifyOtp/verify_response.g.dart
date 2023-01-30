// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyResponse _$VerifyResponseFromJson(Map<String, dynamic> json) =>
    VerifyResponse(
      token: json['token'] as String,
      supplier_id: json['supplier_id'] as int,
    );

Map<String, dynamic> _$VerifyResponseToJson(VerifyResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'supplier_id': instance.supplier_id,
    };
