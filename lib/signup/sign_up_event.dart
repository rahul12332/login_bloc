part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}
class SignEvent extends SignUpEvent{
  String name;
  String email;
  String password;
  String confirmpassword;
  SignEvent({required this.email, required this.password, required this.name, required this.confirmpassword});

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, name, confirmpassword];

}
