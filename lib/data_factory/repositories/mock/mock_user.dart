import 'dart:convert';

import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:floatplane/data_factory/repositories/user.dart';

import 'dart:async';

import 'package:http/http.dart';

class MockUserRepository extends UserRepository {
  @override
  Future<User> signUp(String username, String password, String fullName) async {
    return this.get('user.json').then((response) {
      if (response.statusCode == 200) {
        return User.fromJson(this.getData(response, field: "user").toString());
      }
    });
  }

  @override
  Future<User> signIn(String username, String password) {
    return this.get('user.json').then((Response response) {
      if (response.statusCode == 200) {
        return User.fromJson(
            json.encode(this.getData(response, field: "user")));
      }
    });
  }
}
