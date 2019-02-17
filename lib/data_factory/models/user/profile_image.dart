library profile_image;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/models/user/child_images.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';

part 'profile_image.g.dart';

abstract class ProfileImage
    implements Built<ProfileImage, ProfileImageBuilder> {
  ProfileImage._();

  factory ProfileImage([updates(ProfileImageBuilder b)]) = _$ProfileImage;

  @BuiltValueField(wireName: 'width')
  int get width;
  @BuiltValueField(wireName: 'height')
  int get height;
  @BuiltValueField(wireName: 'path')
  String get path;
  @BuiltValueField(wireName: 'childImages')
  BuiltList<ChildImages> get childImages;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ProfileImage.serializer, this));
  }

  static ProfileImage fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProfileImage.serializer, json.decode(jsonString));
  }

  static Serializer<ProfileImage> get serializer => _$profileImageSerializer;
}
