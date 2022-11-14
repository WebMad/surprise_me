import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/common/di.dart';
import 'package:surprise_me/src/common/splash_screen.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/screens/login_screen.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chats/chats_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/screens/chat_screen.dart';
import 'package:surprise_me/src/features/chat/presentation/screens/chats_screen.dart';

var routes = {
  '/': (Object? args) {
    return const SplashScreen();
  },
  '/chats': (Object? args) {
    return BlocProvider(
      create: (context) => getIt<ChatsBloc>(),
      child: ChatsScreen(),
    );
  },
  '/chat': (Object? args) {
    var arg = args as Map<String, String>;
    return BlocProvider(
      create: (context) =>
          ChatBloc(arg['receiver_id'] as String, arg['sender_id'] as String),
      child: ChatScreen(),
    );
  },
  '/login': (Object? args) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const LoginScreen(),
    );
  }
};

Route onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      return routes[settings.name]!(settings.arguments);
    },
  );
}
