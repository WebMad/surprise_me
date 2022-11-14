import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/common/di.dart';
import 'package:surprise_me/src/common/navigator.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final authBloc = getIt<AuthBloc>();
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            navigatorKey.currentState?.pushReplacementNamed("/chats");
          }

          if (state is UnAuthenticated) {
            navigatorKey.currentState?.pushReplacementNamed("/login");
          }
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          navigatorKey: navigatorKey,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: onGenerateRoute,
        ),
      ),
    );
  }
}
