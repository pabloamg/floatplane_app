import 'dart:async';
import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/data_factory/models/user/user.dart';

export 'user.dart';
export 'mock/mock_user.dart';

abstract class ReactiveUserRepository {
  Future<User> signUp(String username, String password, String fullName);
  Future<User> signIn(String username, String password);
}

abstract class ReactiveCreatorsRepository {
  Future<List<Creator>> getCreators();
}
