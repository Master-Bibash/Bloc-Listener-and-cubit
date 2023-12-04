import 'package:flutter_bloc/flutter_bloc.dart';

part 'Auth_Event.dart';
part 'Auth_State.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthinitialState()) {
    on<AuthLoginRequestedEvent>((event, emit) async {
      emit(AUthLoadingState());
      try {
        final email = event.email;
        final password = event.password;

        if (password.length < 6) {
          return emit(AuthErrorState('Passowrd too short'));
        }
        await Future.delayed(
          Duration(seconds: 1),
          () {
            return emit(AuthSuccessState(uid: '$email-$password'));
          },
        );
      } catch (e) {
        return emit(AuthErrorState(e.toString()));
      }
    });

    on<AuthLogoutRequested>((event, emit) async {
      try {
        await Future.delayed(const Duration(seconds: 1), () {
          return emit(AuthinitialState());
        });
      } catch (e) {
        emit(AuthErrorState(e.toString()));
      }
    });
  }
  @override
  void onChange(Change<AuthState> change) {
    // TODO: implement onChange
    print('change is $change');
    super.onChange(change);
  }
}
