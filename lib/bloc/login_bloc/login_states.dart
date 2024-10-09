part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final String error;
  final PostApiStatus postApiStatus;

  const LoginState(
      {this.email = '',
      this.password = '',
      this.postApiStatus = PostApiStatus.initial,
      this.error=''});

  LoginState copyWith(
      {String? email,
        String? password,
        PostApiStatus? status,
        String? error}) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        postApiStatus: status ?? postApiStatus,
    error: error ?? this.error);
  }

  @override
  List<Object?> get props => [email, password,postApiStatus,error];
}
