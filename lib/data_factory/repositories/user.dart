import 'dart:convert';
import 'dart:async';

import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:floatplane/data_factory/repositories/api.dart';
import 'package:floatplane/data_factory/repositories/repositories.dart';
import 'package:http/http.dart';

class UserRepository extends Api implements ReactiveUserRepository {
  @override
  Future<User> signUp(String username, String password, String fullName) async {
    Response response = await this.post(this.baseUrl + 'api/v1/signup',
        {'email': username, 'password': password, 'full_name': fullName});
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    if (jsonResponse.containsKey('message')) {
      throw (jsonResponse['message']);
    }
    User user = User.fromJson(response.body);
    return user;
  }

  @override
  Future<User> signIn(String username, String password) async {
    Response response = await this.post(this.baseUrl + 'api/v1/signin',
        {'email': username, 'password': password});
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    if (jsonResponse.containsKey('message')) {
      throw (jsonResponse['message']);
    }
    return User.fromJson(this.getData(response, field: 'user').toString());
  }
}
