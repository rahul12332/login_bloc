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
class SignGenderEvent extends SignUpEvent{
String gender;
SignGenderEvent({required this.gender});
  @override
  // TODO: implement props
  List<Object?> get props => [gender];
}

class SignCheckEvent extends SignUpEvent{
  bool check;
  SignCheckEvent({required this.check});
  List<Object?> get props => [check];
}
