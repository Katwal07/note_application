import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_application/common/widgets/buttons.dart';
import 'package:note_application/common/widgets/text_forms.dart';
import 'package:note_application/core/config/routes/routes_name.dart';

class RegtisterScreen extends StatelessWidget {
  const RegtisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _number = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
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
              decoration:
                  TextFormFields.inputDecoration(context, 'Enter Password'),
            ),
            const SizedBox(height: 20),
            Text('Enter your Phone NUmber',
                style: TextFormFields.textStylesforForms(context)),
            TextField(
              controller: _number,
              decoration:
                  TextFormFields.inputDecoration(context, 'Enter Phone'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonsTheme.elevatedButtonStyle(context),
                child: Text(
                  'Register',
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
                  'Sign Up with Google',
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
                  'Already have account?  ',
                  style: TextFormFields.textStylesforForms(context),
                ),
                InkWell(
                  onTap: () {
                    context.push(RouteNames.login);
                  },
                  child: Text('login',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).colorScheme.primary,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
