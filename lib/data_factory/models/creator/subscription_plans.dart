library subscription_plans;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floatplane/data_factory/serializers/serializers.dart';

part 'subscription_plans.g.dart';

abstract class SubscriptionPlans
    implements Built<SubscriptionPlans, SubscriptionPlansBuilder> {
  SubscriptionPlans._();

  factory SubscriptionPlans([updates(SubscriptionPlansBuilder b)]) =
      _$SubscriptionPlans;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'price')
  String get price;
  @BuiltValueField(wireName: 'currency')
  String get currency;
  @BuiltValueField(wireName: 'interval')
  String get interval;
  @BuiltValueField(wireName: 'intervalCount')
  int get intervalCount;
  @BuiltValueField(wireName: 'logo')
  @nullable
  String get logo;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SubscriptionPlans.serializer, this));
  }

  static SubscriptionPlans fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubscriptionPlans.serializer, json.decode(jsonString));
  }

  static Serializer<SubscriptionPlans> get serializer =>
      _$subscriptionPlansSerializer;
}
