import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'login_response.dart';
part 'login_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponseModel extends Equatable {

  final String message;
  final int status;
  final LoginResponse result;

  const LoginResponseModel({required this.message, required this.status, required this.result});

  @override
  List<Object?> get props => [message, status, result];

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoginResponseModelToJson(this);
  }

//

}