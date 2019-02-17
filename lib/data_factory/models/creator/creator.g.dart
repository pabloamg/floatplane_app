// GENERATED CODE - DO NOT MODIFY BY HAND

part of creator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Creator> _$creatorSerializer = new _$CreatorSerializer();

class _$CreatorSerializer implements StructuredSerializer<Creator> {
  @override
  final Iterable<Type> types = const [Creator, _$Creator];
  @override
  final String wireName = 'Creator';

  @override
  Iterable serialize(Serializers serializers, Creator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'owner',
      serializers.serialize(object.owner, specifiedType: const FullType(Owner)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'urlname',
      serializers.serialize(object.urlname,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'about',
      serializers.serialize(object.about,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'cover',
      serializers.serialize(object.cover, specifiedType: const FullType(Cover)),
      'subscriptionPlans',
      serializers.serialize(object.subscriptionPlans,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SubscriptionPlans)])),
    ];
    if (object.liveStream != null) {
      result
        ..add('liveStream')
        ..add(serializers.serialize(object.liveStream,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Creator deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorBuilder();

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
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(Owner)) as Owner);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urlname':
          result.urlname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover.replace(serializers.deserialize(value,
              specifiedType: const FullType(Cover)) as Cover);
          break;
        case 'liveStream':
          result.liveStream = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscriptionPlans':
          result.subscriptionPlans.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubscriptionPlans)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Creator extends Creator {
  @override
  final String id;
  @override
  final Owner owner;
  @override
  final String title;
  @override
  final String urlname;
  @override
  final String description;
  @override
  final String about;
  @override
  final String category;
  @override
  final Cover cover;
  @override
  final String liveStream;
  @override
  final BuiltList<SubscriptionPlans> subscriptionPlans;

  factory _$Creator([void updates(CreatorBuilder b)]) =>
      (new CreatorBuilder()..update(updates)).build();

  _$Creator._(
      {this.id,
      this.owner,
      this.title,
      this.urlname,
      this.description,
      this.about,
      this.category,
      this.cover,
      this.liveStream,
      this.subscriptionPlans})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Creator', 'id');
    }
    if (owner == null) {
      throw new BuiltValueNullFieldError('Creator', 'owner');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Creator', 'title');
    }
    if (urlname == null) {
      throw new BuiltValueNullFieldError('Creator', 'urlname');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Creator', 'description');
    }
    if (about == null) {
      throw new BuiltValueNullFieldError('Creator', 'about');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Creator', 'category');
    }
    if (cover == null) {
      throw new BuiltValueNullFieldError('Creator', 'cover');
    }
    if (subscriptionPlans == null) {
      throw new BuiltValueNullFieldError('Creator', 'subscriptionPlans');
    }
  }

  @override
  Creator rebuild(void updates(CreatorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorBuilder toBuilder() => new CreatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creator &&
        id == other.id &&
        owner == other.owner &&
        title == other.title &&
        urlname == other.urlname &&
        description == other.description &&
        about == other.about &&
        category == other.category &&
        cover == other.cover &&
        liveStream == other.liveStream &&
        subscriptionPlans == other.subscriptionPlans;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), owner.hashCode),
                                    title.hashCode),
                                urlname.hashCode),
                            description.hashCode),
                        about.hashCode),
                    category.hashCode),
                cover.hashCode),
            liveStream.hashCode),
        subscriptionPlans.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Creator')
          ..add('id', id)
          ..add('owner', owner)
          ..add('title', title)
          ..add('urlname', urlname)
          ..add('description', description)
          ..add('about', about)
          ..add('category', category)
          ..add('cover', cover)
          ..add('liveStream', liveStream)
          ..add('subscriptionPlans', subscriptionPlans))
        .toString();
  }
}

class CreatorBuilder implements Builder<Creator, CreatorBuilder> {
  _$Creator _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  OwnerBuilder _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder owner) => _$this._owner = owner;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _urlname;
  String get urlname => _$this._urlname;
  set urlname(String urlname) => _$this._urlname = urlname;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  CoverBuilder _cover;
  CoverBuilder get cover => _$this._cover ??= new CoverBuilder();
  set cover(CoverBuilder cover) => _$this._cover = cover;

  String _liveStream;
  String get liveStream => _$this._liveStream;
  set liveStream(String liveStream) => _$this._liveStream = liveStream;

  ListBuilder<SubscriptionPlans> _subscriptionPlans;
  ListBuilder<SubscriptionPlans> get subscriptionPlans =>
      _$this._subscriptionPlans ??= new ListBuilder<SubscriptionPlans>();
  set subscriptionPlans(ListBuilder<SubscriptionPlans> subscriptionPlans) =>
      _$this._subscriptionPlans = subscriptionPlans;

  CreatorBuilder();

  CreatorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _owner = _$v.owner?.toBuilder();
      _title = _$v.title;
      _urlname = _$v.urlname;
      _description = _$v.description;
      _about = _$v.about;
      _category = _$v.category;
      _cover = _$v.cover?.toBuilder();
      _liveStream = _$v.liveStream;
      _subscriptionPlans = _$v.subscriptionPlans?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creator other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Creator;
  }

  @override
  void update(void updates(CreatorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Creator build() {
    _$Creator _$result;
    try {
      _$result = _$v ??
          new _$Creator._(
              id: id,
              owner: owner.build(),
              title: title,
              urlname: urlname,
              description: description,
              about: about,
              category: category,
              cover: cover.build(),
              liveStream: liveStream,
              subscriptionPlans: subscriptionPlans.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();

        _$failedField = 'cover';
        cover.build();

        _$failedField = 'subscriptionPlans';
        subscriptionPlans.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Creator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
