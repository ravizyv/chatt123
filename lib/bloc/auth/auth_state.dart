import 'package:appwrite/models.dart';
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable{


  @override
  List<Object> get props => [];
}


class InitialAuthState extends AuthState{
}
class LoadingLoginAuthState extends AuthState{
}

class SuccessLoginAuthState extends AuthState {
  final User user;

  SuccessLoginAuthState(this.user);

  @override
  List<Object> get props => [user];
}

class FailureLoginAuthState extends AuthState{

  String message;
  FailureLoginAuthState(this.message);

  @override
  List<Object> get props => [message];

}