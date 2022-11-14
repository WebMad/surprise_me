import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/login/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        print(state);
        if (state is SuccessLogin) {
          print("dsdsdcxcxcx");
          BlocProvider.of<AuthBloc>(context)
              .add(AuthEvent.loggedIn(user: state.user));
        }
      },
      child: Scaffold(
        body: Center(
          child: Form(
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  const Text("Войдите в аккаунт"),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is ErrorLogin) {
                        return Text(state.msg);
                      }
                      return const SizedBox();
                    },
                  ),
                  TextFormField(controller: emailController),
                  TextFormField(
                      controller: passwordController, obscureText: true),
                  ElevatedButton(
                      onPressed: BlocProvider.of<LoginBloc>(context).state
                              is LoadingLogin
                          ? null
                          : () {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(LoginEvent.send(
                                email: emailController.text,
                                password: passwordController.text,
                              ));
                            },
                      child: const Text("Войти"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
