part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  authenticated, 
  unAuthenticated,
  unknown
}

class AuthenticationState extends Equatable{
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user
  });

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser myUser) :
    this._(status: AuthenticationStatus.authenticated, user: myUser);

  const AuthenticationState.unauthenticated() :
    this._(status: AuthenticationStatus.unAuthenticated);
  
  @override
  List<Object?> get props => [status, user];
}
