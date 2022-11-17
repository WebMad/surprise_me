import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/register/register_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is SuccessRegister) {
          BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkAuth());
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
                  const Text("Создайте аккаунт"),
                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      if (state is ErrorRegister) {
                        return Text(state.msg);
                      }
                      return const SizedBox();
                    },
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: const Text("Войти"),
                      ),
                      ElevatedButton(
                        onPressed: BlocProvider.of<RegisterBloc>(context).state
                                is LoadingRegister
                            ? null
                            : () {
                                if (nameController.text != "" &&
                                    emailController.text != "" &&
                                    passwordController.text != "") {
                                  BlocProvider.of<RegisterBloc>(context).add(
                                    RegisterEvent.send(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text,
                                    ),
                                  );
                                }
                              },
                        child: const Text("Создать аккаунт"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
