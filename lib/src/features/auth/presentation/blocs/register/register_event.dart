part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.send({
    required String name,
    required String email,
    required String password,
  }) = SendRegister;
}
