// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_profile;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfile> _$userProfileSerializer = new _$UserProfileSerializer();

class _$UserProfileSerializer implements StructuredSerializer<UserProfile> {
  @override
  final Iterable<Type> types = const [UserProfile, _$UserProfile];
  @override
  final String wireName = 'UserProfile';

  @override
  Iterable serialize(Serializers serializers, UserProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
      'needs2FA',
      serializers.serialize(object.needs2FA,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  UserProfile deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'needs2FA':
          result.needs2FA = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfile extends UserProfile {
  @override
  final User user;
  @override
  final bool needs2FA;

  factory _$UserProfile([void updates(UserProfileBuilder b)]) =>
      (new UserProfileBuilder()..update(updates)).build();

  _$UserProfile._({this.user, this.needs2FA}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'user');
    }
    if (needs2FA == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'needs2FA');
    }
  }

  @override
  UserProfile rebuild(void updates(UserProfileBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileBuilder toBuilder() => new UserProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
        user == other.user &&
        needs2FA == other.needs2FA;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), needs2FA.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfile')
          ..add('user', user)
          ..add('needs2FA', needs2FA))
        .toString();
  }
}

class UserProfileBuilder implements Builder<UserProfile, UserProfileBuilder> {
  _$UserProfile _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  bool _needs2FA;
  bool get needs2FA => _$this._needs2FA;
  set needs2FA(bool needs2FA) => _$this._needs2FA = needs2FA;

  UserProfileBuilder();

  UserProfileBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _needs2FA = _$v.needs2FA;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfile;
  }

  @override
  void update(void updates(UserProfileBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfile build() {
    _$UserProfile _$result;
    try {
      _$result =
          _$v ?? new _$UserProfile._(user: user.build(), needs2FA: needs2FA);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
