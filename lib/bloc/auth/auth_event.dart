

import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable{


  @override
  List<Object> get props => [];
}


class EmailLoginEvent extends AuthEvent{

  String email;
  String pass;

  EmailLoginEvent(this.email, this.pass);

  @override
  List<Object> get props => [email,pass];

}