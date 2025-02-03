import 'package:equatable/equatable.dart';
import 'package:note_application/module/auth/login/data/model/login_models.dart';
enum AuthenticationStatus { initial, authenticated, unauthenticated }

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final String message;
  final AuthenticatedUser? user;

  const AuthenticationState({
    this.status = AuthenticationStatus.initial,
    this.message = '',
   this.user,
  });

  AuthenticationState copyWith({
    AuthenticationStatus? status,
    String? message,
    AuthenticatedUser? user,
  }) {
    return AuthenticationState(
      status: status ?? this.status,
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }
  @override
  List<Object> get props => [];
}


