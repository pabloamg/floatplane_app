// GENERATED CODE - DO NOT MODIFY BY HAND

part of owner;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Owner> _$ownerSerializer = new _$OwnerSerializer();

class _$OwnerSerializer implements StructuredSerializer<Owner> {
  @override
  final Iterable<Type> types = const [Owner, _$Owner];
  @override
  final String wireName = 'Owner';

  @override
  Iterable serialize(Serializers serializers, Owner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profileImage',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(ProfileImage)),
    ];

    return result;
  }

  @override
  Owner deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profileImage':
          result.profileImage.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProfileImage)) as ProfileImage);
          break;
      }
    }

    return result.build();
  }
}

class _$Owner extends Owner {
  @override
  final String id;
  @override
  final String username;
  @override
  final ProfileImage profileImage;

  factory _$Owner([void updates(OwnerBuilder b)]) =>
      (new OwnerBuilder()..update(updates)).build();

  _$Owner._({this.id, this.username, this.profileImage}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Owner', 'id');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('Owner', 'username');
    }
    if (profileImage == null) {
      throw new BuiltValueNullFieldError('Owner', 'profileImage');
    }
  }

  @override
  Owner rebuild(void updates(OwnerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnerBuilder toBuilder() => new OwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Owner &&
        id == other.id &&
        username == other.username &&
        profileImage == other.profileImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, id.hashCode), username.hashCode), profileImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Owner')
          ..add('id', id)
          ..add('username', username)
          ..add('profileImage', profileImage))
        .toString();
  }
}

class OwnerBuilder implements Builder<Owner, OwnerBuilder> {
  _$Owner _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  ProfileImageBuilder _profileImage;
  ProfileImageBuilder get profileImage =>
      _$this._profileImage ??= new ProfileImageBuilder();
  set profileImage(ProfileImageBuilder profileImage) =>
      _$this._profileImage = profileImage;

  OwnerBuilder();

  OwnerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _profileImage = _$v.profileImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Owner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Owner;
  }

  @override
  void update(void updates(OwnerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Owner build() {
    _$Owner _$result;
    try {
      _$result = _$v ??
          new _$Owner._(
              id: id, username: username, profileImage: profileImage.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profileImage';
        profileImage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Owner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
