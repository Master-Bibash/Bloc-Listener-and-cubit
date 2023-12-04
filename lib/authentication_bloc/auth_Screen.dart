import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/authentication_bloc/Auth_homescreen.dart';
import 'package:flutter_application_4/authentication_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthHomeScreen extends StatelessWidget {
  const AuthHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthErrorState) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
            if (state is AuthSuccessState) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthSecondHomeScreen(),
                  ),
                  (route) => false);
            }
          },
          builder: (context, state) {
            if (state is AUthLoadingState) {
             return CircularProgressIndicator();
            } else {
            return  SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(AuthLoginRequestedEvent(
                              emailController.text, passwordController.text));
                        },
                        child: Text('Login')),
                  ],
                ),
              ),
            );
        

            }
          
          },
  

        )
        );
  
  }
}
