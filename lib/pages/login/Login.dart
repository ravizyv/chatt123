import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatt/bloc/auth/auth_bloc.dart';
import 'package:chatt/bloc/auth/auth_event.dart';
import 'package:chatt/bloc/auth/auth_state.dart';
import 'package:chatt/components/my_button.dart';
import 'package:chatt/components/my_textfield.dart';
import 'package:chatt/route/app_route/AppRouter.gr.dart';
import 'package:chatt/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // email and pw controller
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  // login method
  void login() {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    authBloc.add(EmailLoginEvent(email.text, pass.text));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessLoginAuthState) {

            AutoRouter.of(context).replace(const HomeRoute());
          } else if (state is FailureLoginAuthState) {

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'STIM',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'NETWORK',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 100,),
                MyTextField(
                  hintText: 'Электронная почта',
                  obscureText: false,
                  controller: email,
                  maxLength: 50,
                ),
                const SizedBox(height: 15,),
                MyTextField(
                  hintText: 'Пароль',
                  obscureText: true,
                  controller: pass,
                  maxLength: 50,
                ),
                const SizedBox(height: 25,),
                MyButton(
                  text: 'ВОЙТИ',
                  onTap: login,
                  theme: lightMode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


