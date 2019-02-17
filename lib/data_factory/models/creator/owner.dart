library owner;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/models/user/profile_image.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';

part 'owner.g.dart';

abstract class Owner implements Built<Owner, OwnerBuilder> {
  Owner._();

  factory Owner([updates(OwnerBuilder b)]) = _$Owner;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'username')
  String get username;
  @BuiltValueField(wireName: 'profileImage')
  ProfileImage get profileImage;
  String toJson() {
    return json.encode(serializers.serializeWith(Owner.serializer, this));
  }

  static Owner fromJson(String jsonString) {
    return serializers.deserializeWith(
        Owner.serializer, json.decode(jsonString));
  }

  static Serializer<Owner> get serializer => _$ownerSerializer;
}
