part of 'sign_up_bloc.dart';

 class SignUpState extends Equatable {
  const SignUpState();
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class SignupGender extends SignUpState {
  final String gender;
  const SignupGender({ required this.gender});
  @override
  List<Object?> get props => [gender];
}

class SignupCheck extends SignUpState{
  final bool check;
  const SignupCheck({required this.check});
  @override
  List<Object?> get props =>[check];
}


