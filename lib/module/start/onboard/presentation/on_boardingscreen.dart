import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_application/common/widgets/buttons.dart';
import 'package:note_application/core/config/routes/routes_name.dart';

class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                  'https://help.apple.com/assets/674E470E290A19E5B60CB44A/674E47109BA51A064C0844B8/en_US/c34b1b0e87e731a83161d9bb21345afc.png'),
            ),
          ),
          Column(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.035,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Welcome To ',
                    ),
                    TextSpan(
                      text: 'Notes ',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    const TextSpan(
                      text: 'App ',
                      // style: TextStyle(),
                    ),
                    const TextSpan(
                      text: '!',
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'A Simple Note Taking and Sharing App ',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      letterSpacing: -0.5,
                    ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.go(RouteNames.login);
              },
              style: ButtonsTheme.elevatedButtonStyle(context),
              child: Text(
                'Get Started',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
          const SizedBox(),
        ],
      ),
    ));
  }
}

class Routes {}
