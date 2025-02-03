import 'package:bloc/bloc.dart';
import 'package:note_application/common/bloc/auth/auth-event.dart';
import 'package:note_application/common/bloc/auth/auth_state.dart';
import 'package:note_application/module/auth/login/data/model/login_models.dart';
import 'package:note_application/module/auth/login/data/repository/login_repo.dart';

class AuthenticateduserBloc extends Bloc<AuthEvent, AuthenticationState> {
  // AuthenticateduserBloc(super.initialState);

  AuthenticatedUser? user;

  AuthenticateduserBloc() : super(AuthenticationState()) {
    on<LoginUserEvent>(_loginUser);
  }

  Future<void> _loginUser(
      LoginUserEvent event, Emitter<AuthenticationState> emit) async {
    try {
      final user = await LoginRepository.login(event.username, event.password);
      if (user != null) {
        emit(
          state.copyWith(
            status: AuthenticationStatus.authenticated,
            user: user,
            message: 'Login successful',
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: AuthenticationStatus.unauthenticated,
            message: 'Login failed',
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthenticationStatus.unauthenticated,
          message: 'Failed to login',
        ),
      );
    }
  }

  // Future <void> _loginUser
}
