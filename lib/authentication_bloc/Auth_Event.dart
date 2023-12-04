part of 'auth_bloc.dart';
//event

abstract class AuthEvent {}

class AuthLoginRequestedEvent extends AuthEvent {
  String email;
  String password;
  AuthLoginRequestedEvent(this.email, this.password);
}
final class AuthLogoutRequested extends AuthEvent{}