import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/common/bloc/password_visibility/password_toogle_event.dart';
import 'package:note_application/common/bloc/password_visibility/password_toogle_state.dart';

class ToogleBloc extends Bloc<ToogleEvent, ToogleState> {
  ToogleBloc() : super(const ToogleState(isPasswordVisible: false)) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(ToogleState(isPasswordVisible: !state.isPasswordVisible)); 
    });
  }
  
}

