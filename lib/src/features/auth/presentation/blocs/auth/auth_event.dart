part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loggedIn({
    required User user,
  }) = LoggedIn;

  const factory AuthEvent.checkAuth() = CheckAuth;

  const factory AuthEvent.logout() = LogoutAuth;
}
