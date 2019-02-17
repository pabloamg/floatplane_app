// GENERATED CODE - DO NOT MODIFY BY HAND

part of subscription_plans;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscriptionPlans> _$subscriptionPlansSerializer =
    new _$SubscriptionPlansSerializer();

class _$SubscriptionPlansSerializer
    implements StructuredSerializer<SubscriptionPlans> {
  @override
  final Iterable<Type> types = const [SubscriptionPlans, _$SubscriptionPlans];
  @override
  final String wireName = 'SubscriptionPlans';

  @override
  Iterable serialize(Serializers serializers, SubscriptionPlans object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'interval',
      serializers.serialize(object.interval,
          specifiedType: const FullType(String)),
      'intervalCount',
      serializers.serialize(object.intervalCount,
          specifiedType: const FullType(int)),
    ];
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SubscriptionPlans deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionPlansBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intervalCount':
          result.intervalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubscriptionPlans extends SubscriptionPlans {
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  @override
  final String currency;
  @override
  final String interval;
  @override
  final int intervalCount;
  @override
  final String logo;

  factory _$SubscriptionPlans([void updates(SubscriptionPlansBuilder b)]) =>
      (new SubscriptionPlansBuilder()..update(updates)).build();

  _$SubscriptionPlans._(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.currency,
      this.interval,
      this.intervalCount,
      this.logo})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'description');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'price');
    }
    if (currency == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'currency');
    }
    if (interval == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'interval');
    }
    if (intervalCount == null) {
      throw new BuiltValueNullFieldError('SubscriptionPlans', 'intervalCount');
    }
  }

  @override
  SubscriptionPlans rebuild(void updates(SubscriptionPlansBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionPlansBuilder toBuilder() =>
      new SubscriptionPlansBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPlans &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        price == other.price &&
        currency == other.currency &&
        interval == other.interval &&
        intervalCount == other.intervalCount &&
        logo == other.logo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), title.hashCode),
                            description.hashCode),
                        price.hashCode),
                    currency.hashCode),
                interval.hashCode),
            intervalCount.hashCode),
        logo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscriptionPlans')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('price', price)
          ..add('currency', currency)
          ..add('interval', interval)
          ..add('intervalCount', intervalCount)
          ..add('logo', logo))
        .toString();
  }
}

class SubscriptionPlansBuilder
    implements Builder<SubscriptionPlans, SubscriptionPlansBuilder> {
  _$SubscriptionPlans _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _interval;
  String get interval => _$this._interval;
  set interval(String interval) => _$this._interval = interval;

  int _intervalCount;
  int get intervalCount => _$this._intervalCount;
  set intervalCount(int intervalCount) => _$this._intervalCount = intervalCount;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  SubscriptionPlansBuilder();

  SubscriptionPlansBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _price = _$v.price;
      _currency = _$v.currency;
      _interval = _$v.interval;
      _intervalCount = _$v.intervalCount;
      _logo = _$v.logo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionPlans other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubscriptionPlans;
  }

  @override
  void update(void updates(SubscriptionPlansBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscriptionPlans build() {
    final _$result = _$v ??
        new _$SubscriptionPlans._(
            id: id,
            title: title,
            description: description,
            price: price,
            currency: currency,
            interval: interval,
            intervalCount: intervalCount,
            logo: logo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
