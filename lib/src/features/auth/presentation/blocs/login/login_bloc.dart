import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:surprise_me/src/features/auth/entities/user.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<SendLogin>(_onSendLogin);
  }

  _onSendLogin(SendLogin event, Emitter emit) async {
    try {
      emit(const LoginState.loading());
      final credential =
          await firebase_auth.FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      print("dsds");

      emit(LoginState.success(
        user: User(
          id: credential.user!.uid,
          name: credential.user?.displayName ?? "No name",
          login: credential.user!.email!,
        ),
      ));
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(const LoginState.error(msg: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(const LoginState.error(
            msg: 'Wrong password provided for that user.'));
      }
      emit(const LoginState.error(msg: 'Unknown error'));
    } catch (e) {
      emit(const LoginState.error(msg: 'Unknown error'));
    }
  }
}
