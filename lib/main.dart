import 'package:flutter/material.dart';
import 'package:flutter_application_4/Todo/models/To_do_cubit.dart';
import 'package:flutter_application_4/authentication_bloc/Auth_Observer.dart';
import 'package:flutter_application_4/authentication_bloc/auth_Screen.dart';
import 'package:flutter_application_4/authentication_bloc/auth_bloc.dart';
import 'package:flutter_application_4/bloc/counter_bloc.dart';
import 'package:flutter_application_4/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
Bloc.observer==AppBlocObserver();
runApp(MyAPP());


}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => TodoCubit()),
        BlocProvider(create: (context) => AuthBloc(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthHomeScreen(),
      ),
    );
  }
}
