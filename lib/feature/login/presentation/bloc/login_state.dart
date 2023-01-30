//
// import 'dart:math';
//
// import 'package:equatable/equatable.dart';
// part of 'login_bloc.dart';
//
// abstract class LoginState extends Equatable {
//   const LoginState();
// }
//
// class LoginInitial extends LoginState {
//   @override
//   List<Object> get props => [];
// }
//
// class LoginOTPSent extends LoginState {
//   @override
//   List<Object?> get props => [];
// }
//
// class LoginLoading extends LoginState {
//   final String message;
//   const LoginLoading({required this.message});
//
//   @override
//   List<Object?> get props => [message];
// }
//
// class LoginError extends LoginState {
//   final String error;
//   const LoginError({required this.error});
//
//   @override
//   List<Object?> get props => [error, Random().nextInt(100)];
// }
//
// class LoginSuccess extends LoginState {
//   @override
//   List<Object?> get props => [];
// }
