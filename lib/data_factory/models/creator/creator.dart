library creator;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';
import 'package:floatplane/data_factory/models/creator/cover.dart';
import 'package:floatplane/data_factory/models/creator/owner.dart';
import 'package:floatplane/data_factory/models/creator/subscription_plans.dart';

part 'creator.g.dart';

abstract class Creator implements Built<Creator, CreatorBuilder> {
  Creator._();

  factory Creator([updates(CreatorBuilder b)]) = _$Creator;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'owner')
  Owner get owner;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'urlname')
  String get urlname;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'about')
  String get about;
  @BuiltValueField(wireName: 'category')
  String get category;
  @BuiltValueField(wireName: 'cover')
  Cover get cover;
  @BuiltValueField(wireName: 'liveStream')
  @nullable
  String get liveStream;
  @BuiltValueField(wireName: 'subscriptionPlans')
  BuiltList<SubscriptionPlans> get subscriptionPlans;
  String toJson() {
    return json.encode(serializers.serializeWith(Creator.serializer, this));
  }

  static Creator fromJson(String jsonString) {
    return serializers.deserializeWith(
        Creator.serializer, json.decode(jsonString));
  }

  static Serializer<Creator> get serializer => _$creatorSerializer;
}
