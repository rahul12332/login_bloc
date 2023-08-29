import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'loginbloc_event.dart';
part 'loginbloc_state.dart';

class LoginblocBloc extends Bloc<LoginblocEvent, LoginblocInitial> {
  LoginblocBloc() : super(LoginblocInitial()) {
    on<LoginEvent>((event, emit) async {


      emit(state.copyWith(Status.loading));
      await Future.delayed(Duration(seconds: 1));
      print('running');
      if(event.email == 'g@gmail.com'&& event.password =="123"){
        print('success');
        emit(state.copyWith(Status.success));
      }
      else{
        print('failed');
        emit(state.copyWith(Status.failed));
      }
      print('email: ${event.email}');
      print('finish');
    });
  }
}
