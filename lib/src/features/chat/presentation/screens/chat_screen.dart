import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Чат")),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          if (state is LoadedMessages) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Text(state.messages[index].message);
                    },
                    itemCount: state.messages.length,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(controller: messageController)),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<ChatBloc>(context)
                            .add(SendMessage(message: messageController.text));
                      },
                      icon: const Icon(Icons.send),
                    )
                  ],
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
