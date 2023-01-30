import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'verify_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyResponse extends Equatable {

  final String token;
  final int supplier_id;

  const VerifyResponse({required this.token,required this.supplier_id});

  @override
  List<Object?> get props => [token,supplier_id];

  Map<String, dynamic> toJson() {
    return _$VerifyResponseToJson(this);
  }

  factory VerifyResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyResponseFromJson(json);
  }


}
