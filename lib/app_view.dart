import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pairr/screens/auth/view/welcome_screen.dart';
import 'package:pairr/screens/home/home_screen.dart';

import 'blocs/authentication/authentication_bloc.dart';
import 'screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pairr',
        theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade200,
              onBackground: Colors.black,
              primary: const Color(0xFFFe3c72),
              onPrimary: Colors.black,
              secondary: const Color(0xFF424242),
              onSecondary: Colors.white,
              tertiary: const Color.fromRGBO(255, 204, 128, 1),
              error: Colors.red,
              outline: const Color(0xFF424242)),
        ),
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return BlocProvider(
              create: (context) => SignInBloc(
                  userRepository:
                      context.read<AuthenticationBloc>().userRepository),
              child: const HomeScreen(),
            );
          } else {
            return const WelcomeScreen();
          }
        }));
  }
}
