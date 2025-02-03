import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];

}

class LoginUserEvent extends AuthEvent {
  final String username;
  final String password;
  const LoginUserEvent({required this.username, required this.password});
  @override
  List<Object> get props => [username, password];
}