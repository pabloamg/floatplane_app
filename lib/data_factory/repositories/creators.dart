import 'dart:convert';
import 'dart:async';

import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/data_factory/repositories/api.dart';
import 'package:floatplane/data_factory/repositories/repositories.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';
import 'package:http/http.dart';

class CreatorsRepository extends Api implements ReactiveCreatorsRepository {
  @override
  Future<List<Creator>> getCreators() async {
    Response response = await this.get('creators/list');
    List<Map<String, dynamic>> jsonResponse = json.decode(response.body);

    List<Creator> creators = [];
    jsonResponse.forEach((el) {
      try {
        var creator = serializers.deserializeWith(Creator.serializer, el);
        creators.add(creator);
      } catch (e) {
        print(e.toString());
      }
    });
    return creators;
  }
}
