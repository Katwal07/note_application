import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_application/common/bloc/auth/auth-event.dart';
import 'package:note_application/common/bloc/auth/auth_bloc.dart';
import 'package:note_application/common/bloc/auth/auth_state.dart';
import 'package:note_application/common/widgets/app_bar.dart';

import 'package:note_application/common/widgets/buttons.dart';
import 'package:note_application/common/widgets/text_forms.dart';
import 'package:note_application/core/config/routes/routes_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: CustomAppbar.appBarStyle(context, 'login'),
      body: BlocListener<AuthenticateduserBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            context.push(RouteNames.homeScreen);
          } else if (state.status == AuthenticationStatus.unauthenticated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text('Enter your email',
                  style: TextFormFields.textStylesforForms(context)),
              TextField(
                controller: _emailController,
                decoration:
                    TextFormFields.inputDecoration(context, 'Enter Email'),
              ),
              const SizedBox(height: 20),
              Text('Enter your password',
                  style: TextFormFields.textStylesforForms(context)),
              TextField(
                controller: _passwordController,
                decoration: TextFormFields.inputDecorationforPassword(
                    context, 'Enter Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final username = _emailController.text;
                    final password = _passwordController.text;
                    context.read<AuthenticateduserBloc>().add(LoginUserEvent(
                          username: username,
                          password: password,
                        ));
                  },
                  style: ButtonsTheme.elevatedButtonStyle(context),
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or',
                    style: TextFormFields.textStylesforForms(context),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Login with google
                  },
                  style: ButtonsTheme.elevatedButtonStyle(context),
                  child: Text(
                    'Login with Google',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have account?  ',
                    style: TextFormFields.textStylesforForms(context),
                  ),
                  InkWell(
                    onTap: () {
                      context.push(RouteNames.register);
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Theme.of(context).colorScheme.primary,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'forget your password?  ',
                    style: TextFormFields.textStylesforForms(context),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigate to forget password screen
                    },
                    child: Text('forget password',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Theme.of(context).colorScheme.primary,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
