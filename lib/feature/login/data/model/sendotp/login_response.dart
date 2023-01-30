import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponse extends Equatable {

  final String request_id;

  const LoginResponse({required this.request_id});

  @override
  List<Object?> get props => [request_id];

  Map<String, dynamic> toJson() {
    return _$LoginResponseToJson(this);
  }

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }
//

}
