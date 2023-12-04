import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/authentication_bloc/auth_Screen.dart';
import 'package:flutter_application_4/authentication_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthSecondHomeScreen extends StatelessWidget {
  const AuthSecondHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //authState watches the state changes if

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthinitialState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthHomeScreen(),
                ),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AUthLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } 
          // final authState = context.watch<AuthBloc>().state as AuthSuccessState;

          return Column(
            children: [
              Center(
                child: Text((state as AuthSuccessState).uid),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthLogoutRequested());
                  },
                  child: Text("Sign-Out"))
            ],
          );
        },
      ),
    );
  }
}
