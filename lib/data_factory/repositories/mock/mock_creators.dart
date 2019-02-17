import 'dart:convert';

import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/data_factory/repositories/creators.dart';

import 'dart:async';

import 'package:floatplane/data_factory/serializers/serializers.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class MockCreatorsRepository extends CreatorsRepository {
  @override
  Future<List<Creator>> getCreators() async {
    return this.get('creator_list.json').then((Response response) {
      if (response.statusCode == 200) {
        return compute(creators, this.getArrayData(response, field: null));
      }
      return [];
    });
  }
}

List<Creator> creators(industriesJson) {
  List<Creator> industries = [];
  industriesJson.forEach((expert) {
    industries.add(serializers.deserializeWith(Creator.serializer, expert));
  });
  return industries;
}
