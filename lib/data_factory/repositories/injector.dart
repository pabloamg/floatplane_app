import 'package:floatplane/data_factory/repositories/creators.dart';
import 'package:floatplane/data_factory/repositories/mock/mock_creators.dart';
import 'package:floatplane/data_factory/repositories/mock/mock_user.dart';
import 'package:floatplane/data_factory/repositories/user.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/testing.dart';

enum RepoType { MOCK, PROD, TEST }

class Injector {
  static final Injector _singleton = Injector._internal();

  static RepoType _repoType;
  static http.Client _client;

  static void configure(RepoType repoType, {http.Client client}) {
    _repoType = repoType;
    if (client == null && _repoType == RepoType.MOCK) {
      _client = MockClient((Request request) async {
        final file = rootBundle.loadString('test_resources/${request.url}');
        return Response(await file, 200);
      });
    } else if (client == null) {
      _client = http.Client();
    } else {
      _client = client;
    }
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  http.Client get client {
    return _client;
  }

  UserRepository get userRepository {
    switch (_repoType) {
      case RepoType.MOCK:
      case RepoType.TEST:
        return MockUserRepository();
      default:
        return UserRepository();
    }
  }

  CreatorsRepository get creatorsRepository {
    switch (_repoType) {
      case RepoType.MOCK:
      case RepoType.TEST:
        return MockCreatorsRepository();
      default:
        return CreatorsRepository();
    }
  }
}

Injector injector;

injectorBuilder() {
  injector = Injector();
}
