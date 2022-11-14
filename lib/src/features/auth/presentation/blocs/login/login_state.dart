part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLogin;

  const factory LoginState.loading() = LoadingLogin;

  const factory LoginState.error({
    required String msg,
  }) = ErrorLogin;

  const factory LoginState.success({
    required User user,
  }) = SuccessLogin;
}
