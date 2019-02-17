library cover;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';
import 'package:floatplane/data_factory/models/user/child_images.dart';
part 'cover.g.dart';

abstract class Cover implements Built<Cover, CoverBuilder> {
  Cover._();

  factory Cover([updates(CoverBuilder b)]) = _$Cover;

  @BuiltValueField(wireName: 'width')
  int get width;
  @BuiltValueField(wireName: 'height')
  int get height;
  @BuiltValueField(wireName: 'path')
  String get path;
  @BuiltValueField(wireName: 'childImages')
  BuiltList<ChildImages> get childImages;
  String toJson() {
    return json.encode(serializers.serializeWith(Cover.serializer, this));
  }

  static Cover fromJson(String jsonString) {
    return serializers.deserializeWith(
        Cover.serializer, json.decode(jsonString));
  }

  static Serializer<Cover> get serializer => _$coverSerializer;
}
