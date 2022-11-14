import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chats/chats_bloc.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact list")),
      body: BlocBuilder<ChatsBloc, ChatsState>(
        builder: (context, state) {
          if (state is LoadedChats) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.users[index].name),
                  subtitle: Text(state.users[index].login),
                  onTap: () {},
                  trailing: const Icon(Icons.navigate_next),
                );
              },
              itemCount: state.users.length,
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
