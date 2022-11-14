import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:surprise_me/src/common/di.dart';
import 'package:surprise_me/src/features/auth/entities/user.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';

part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

@injectable
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc() : super(const ChatsState.loading()) {
    on<LoadChats>(_onLoadChats);
    on<NewChats>(_onNewChats);

    FirebaseFirestore.instance.collection("users").snapshots().listen((event) {
      add(ChatsEvent.newChats(
          chats: event.docs
              .map((e) {
                print(e.data());
                return User(
                  id: e.data()["auth_uid"],
                  name: e.data()["fullname"],
                  login: e.data()["email"],
                );
              })
              .where((element) =>
                  element.id !=
                  (getIt<AuthBloc>().state as Authenticated).user.id)
              .toList()));
    });

    add(const ChatsEvent.loadChats());
  }

  _onNewChats(NewChats event, Emitter emit) {
    var currentState = state;
    if (currentState is! LoadedChats) {
      return;
    }

    emit(currentState.copyWith(users: event.chats));
  }

  _onLoadChats(LoadChats event, Emitter emit) async {
    emit(const ChatsState.loading());
    var result = await FirebaseFirestore.instance.collection("users").get();
    emit(
      ChatsState.loaded(
        users: result.docs
            .map(
              (e) => User(
                id: e.data()["auth_uid"],
                name: e.data()["fullname"],
                login: e.data()["email"],
              ),
            )
            .toList(),
      ),
    );
  }
}
