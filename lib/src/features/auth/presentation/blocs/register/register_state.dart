part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = InitialRegister;

  const factory RegisterState.loading() = LoadingRegister;

  const factory RegisterState.success() = SuccessRegister;

  const factory RegisterState.error({
    required String msg,
  }) = ErrorRegister;
}
