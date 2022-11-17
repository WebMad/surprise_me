import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState.initial()) {
    on<SendRegister>(_onSendRegister);
  }

  _onSendRegister(SendRegister event, Emitter emit) async {
    emit(const RegisterState.loading());
    try {
      var credentials = await firebase_auth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      await FirebaseFirestore.instance.collection("users").add({
        "auth_uid": credentials.user!.uid,
        "email": event.email,
        "fullname": event.name
      });

      emit(const RegisterState.success());
    } catch (_) {
      print(_);
      emit(const RegisterState.error(msg: "Неизвестная ошибка"));
    }
  }
}
