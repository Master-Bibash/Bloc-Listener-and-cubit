import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print("Apploobserver is called");
    print("${bloc} has been created and the state is ${change}");
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print("error is $error");
    super.onError(bloc, error, stackTrace);
  }
}
