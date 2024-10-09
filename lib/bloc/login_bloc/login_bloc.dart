import 'dart:async';

import 'package:bloc_clean_coding/services/session_manager/session_controller.dart';
import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/auth_api/auth_api_repository.dart';

part 'login_event.dart';

part 'login_states.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {

  final AuthRepository autRepository;

  LoginBloc({required this.autRepository}) : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onFormSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onFormSubmitted(LoginApi event, Emitter<LoginState> emit) async {
    // Map<String, String> data = {
    //   'email': 'eve.holt@reqres.in',
    //   'password': 'cityslicka',
    // };
    emit(state.copyWith(status: PostApiStatus.loading));
    final Map<String,String> data = {
      'email': state.email,
      'password': state.password,
    };
    await autRepository.login(data)
        .then((value) async {
        if(value.error.isNotEmpty){
          emit(state.copyWith(status: PostApiStatus.error, error: value.error));
        } else {
          await SessionController().saveUserInPreference(value);
          await SessionController().getUserFromPreference();
          emit(state.copyWith(status: PostApiStatus.success));
        }
    }).onError((e,s){
      emit(state.copyWith(status: PostApiStatus.error, error: e.toString()));
    });
  }
}
