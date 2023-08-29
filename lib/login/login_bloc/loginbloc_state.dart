part of 'loginbloc_bloc.dart';
enum Status{initial, loading, success, failed}
abstract class LoginblocState extends Equatable {
  const LoginblocState();
}

class LoginblocInitial extends LoginblocState {


  Status status ;
  LoginblocInitial({this.status=Status.initial,});

  LoginblocInitial copyWith(Status? status) {
    print('State Changed: ${status?? this.status}');
    return LoginblocInitial(status: status ?? this.status);
  }


  @override
  List<Object> get props => [status];
}
