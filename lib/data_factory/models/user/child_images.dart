library child_images;

import 'dart:convert';
import 'package:build_daemon/data/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_images.g.dart';

abstract class ChildImages implements Built<ChildImages, ChildImagesBuilder> {
  ChildImages._();

  factory ChildImages([updates(ChildImagesBuilder b)]) = _$ChildImages;

  @BuiltValueField(wireName: 'width')
  int get width;
  @BuiltValueField(wireName: 'height')
  int get height;
  @BuiltValueField(wireName: 'path')
  String get path;
  String toJson() {
    return json.encode(serializers.serializeWith(ChildImages.serializer, this));
  }

  static ChildImages fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChildImages.serializer, json.decode(jsonString));
  }

  static Serializer<ChildImages> get serializer => _$childImagesSerializer;
}
