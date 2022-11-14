import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:surprise_me/src/features/auth/entities/user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unAuthenticated()) {
    on<LoggedIn>(_onLoggedIn);
    on<CheckAuth>(_onCheckAuth);

    add(const CheckAuth());
  }

  _onLoggedIn(LoggedIn event, Emitter emit) {
    emit(AuthState.authenticated(user: event.user));
  }

  _onCheckAuth(CheckAuth event, Emitter emit) {
    if (firebase_auth.FirebaseAuth.instance.currentUser != null) {
      emit(
        AuthState.authenticated(
          user: User.fromFirebaseUser(
              firebase_auth.FirebaseAuth.instance.currentUser!),
        ),
      );
      return;
    }
    emit(const AuthState.unAuthenticated());
  }
}
