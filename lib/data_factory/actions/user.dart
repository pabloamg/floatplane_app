import 'dart:async';

import 'package:floatplane/data_factory/models/user/user.dart';

class SetUser {
  final User user;
  SetUser(this.user);

  @override
  String toString() {
    return 'SetUser{user:${user.toString()}';
  }
}

class Login {
  String username;
  String password;
  final Completer completer;
  Login({this.username, this.password, Completer completer})
      : this.completer = completer ?? new Completer();

  @override
  String toString() {
    return 'Login{}';
  }
}

class SignUp {
  String username;
  String password;
  String fullName;
  final Completer completer;
  SignUp({this.username, this.password, this.fullName, Completer completer})
      : this.completer = completer ?? new Completer();

  @override
  String toString() {
    return 'Login{}';
  }
}

class Logout {
  Logout();

  @override
  String toString() {
    return 'Logout';
  }
}
