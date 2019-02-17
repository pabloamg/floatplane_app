// GENERATED CODE - DO NOT MODIFY BY HAND

part of cover;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cover> _$coverSerializer = new _$CoverSerializer();

class _$CoverSerializer implements StructuredSerializer<Cover> {
  @override
  final Iterable<Type> types = const [Cover, _$Cover];
  @override
  final String wireName = 'Cover';

  @override
  Iterable serialize(Serializers serializers, Cover object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'path',
      serializers.serialize(object.path, specifiedType: const FullType(String)),
      'childImages',
      serializers.serialize(object.childImages,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ChildImages)])),
    ];

    return result;
  }

  @override
  Cover deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoverBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'childImages':
          result.childImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ChildImages)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Cover extends Cover {
  @override
  final int width;
  @override
  final int height;
  @override
  final String path;
  @override
  final BuiltList<ChildImages> childImages;

  factory _$Cover([void updates(CoverBuilder b)]) =>
      (new CoverBuilder()..update(updates)).build();

  _$Cover._({this.width, this.height, this.path, this.childImages})
      : super._() {
    if (width == null) {
      throw new BuiltValueNullFieldError('Cover', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('Cover', 'height');
    }
    if (path == null) {
      throw new BuiltValueNullFieldError('Cover', 'path');
    }
    if (childImages == null) {
      throw new BuiltValueNullFieldError('Cover', 'childImages');
    }
  }

  @override
  Cover rebuild(void updates(CoverBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverBuilder toBuilder() => new CoverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cover &&
        width == other.width &&
        height == other.height &&
        path == other.path &&
        childImages == other.childImages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, width.hashCode), height.hashCode), path.hashCode),
        childImages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cover')
          ..add('width', width)
          ..add('height', height)
          ..add('path', path)
          ..add('childImages', childImages))
        .toString();
  }
}

class CoverBuilder implements Builder<Cover, CoverBuilder> {
  _$Cover _$v;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  ListBuilder<ChildImages> _childImages;
  ListBuilder<ChildImages> get childImages =>
      _$this._childImages ??= new ListBuilder<ChildImages>();
  set childImages(ListBuilder<ChildImages> childImages) =>
      _$this._childImages = childImages;

  CoverBuilder();

  CoverBuilder get _$this {
    if (_$v != null) {
      _width = _$v.width;
      _height = _$v.height;
      _path = _$v.path;
      _childImages = _$v.childImages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cover other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cover;
  }

  @override
  void update(void updates(CoverBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Cover build() {
    _$Cover _$result;
    try {
      _$result = _$v ??
          new _$Cover._(
              width: width,
              height: height,
              path: path,
              childImages: childImages.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'childImages';
        childImages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Cover', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
