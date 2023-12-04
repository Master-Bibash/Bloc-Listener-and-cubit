part of 'auth_bloc.dart';

//state
abstract class AuthState {}

final class AuthinitialState extends AuthState {}

final class AuthSuccessState extends AuthState {
  final String uid;

  AuthSuccessState({required this.uid});
  
}
final class  AUthLoadingState extends AuthState{}
final class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}
