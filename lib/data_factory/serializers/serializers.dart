import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:floatplane/data_factory/models/user/child_images.dart';
import 'package:floatplane/data_factory/models/user/profile_image.dart';
import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/data_factory/models/creator/owner.dart';
import 'package:floatplane/data_factory/models/creator/cover.dart';
import 'package:floatplane/data_factory/models/creator/subscription_plans.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  User,
  ChildImages,
  ProfileImage,
  Creator,
  Owner,
  Cover,
  SubscriptionPlans
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
