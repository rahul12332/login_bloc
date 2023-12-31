import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState()) {
    on<SignUpEvent>((event, emit) {

    });

    on<SignGenderEvent>((event, emit){
      emit(SignupGender(gender: event.gender));
    });

    on<SignCheckEvent>((event, emit){
      emit(SignupCheck(check: event.check));
    });
  }
}
