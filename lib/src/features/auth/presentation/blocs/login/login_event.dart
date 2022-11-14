part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.send({
    required String email,
    required String password,
  }) = SendLogin;
}
