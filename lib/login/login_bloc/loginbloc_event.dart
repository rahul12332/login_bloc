part of 'loginbloc_bloc.dart';

abstract class LoginblocEvent extends Equatable {
  const LoginblocEvent();
}

class LoginEvent extends LoginblocEvent{
  String email;
  String password;
  LoginEvent({required this.email, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [email, password];

}
