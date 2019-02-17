library user_profile;

import 'dart:convert';

import 'package:build_daemon/data/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/models/user/user.dart';

part 'user_profile.g.dart';

abstract class UserProfile implements Built<UserProfile, UserProfileBuilder> {
  UserProfile._();

  factory UserProfile([updates(UserProfileBuilder b)]) = _$UserProfile;

  @BuiltValueField(wireName: 'user')
  User get user;
  @BuiltValueField(wireName: 'needs2FA')
  bool get needs2FA;
  String toJson() {
    return json.encode(serializers.serializeWith(UserProfile.serializer, this));
  }

  static UserProfile fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserProfile.serializer, json.decode(jsonString));
  }

  static Serializer<UserProfile> get serializer => _$userProfileSerializer;
}
