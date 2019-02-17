// GENERATED CODE - DO NOT MODIFY BY HAND

part of child_images;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChildImages> _$childImagesSerializer = new _$ChildImagesSerializer();

class _$ChildImagesSerializer implements StructuredSerializer<ChildImages> {
  @override
  final Iterable<Type> types = const [ChildImages, _$ChildImages];
  @override
  final String wireName = 'ChildImages';

  @override
  Iterable serialize(Serializers serializers, ChildImages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'path',
      serializers.serialize(object.path, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ChildImages deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChildImagesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ChildImages extends ChildImages {
  @override
  final int width;
  @override
  final int height;
  @override
  final String path;

  factory _$ChildImages([void updates(ChildImagesBuilder b)]) =>
      (new ChildImagesBuilder()..update(updates)).build();

  _$ChildImages._({this.width, this.height, this.path}) : super._() {
    if (width == null) {
      throw new BuiltValueNullFieldError('ChildImages', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('ChildImages', 'height');
    }
    if (path == null) {
      throw new BuiltValueNullFieldError('ChildImages', 'path');
    }
  }

  @override
  ChildImages rebuild(void updates(ChildImagesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildImagesBuilder toBuilder() => new ChildImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChildImages &&
        width == other.width &&
        height == other.height &&
        path == other.path;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, width.hashCode), height.hashCode), path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChildImages')
          ..add('width', width)
          ..add('height', height)
          ..add('path', path))
        .toString();
  }
}

class ChildImagesBuilder implements Builder<ChildImages, ChildImagesBuilder> {
  _$ChildImages _$v;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  ChildImagesBuilder();

  ChildImagesBuilder get _$this {
    if (_$v != null) {
      _width = _$v.width;
      _height = _$v.height;
      _path = _$v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildImages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChildImages;
  }

  @override
  void update(void updates(ChildImagesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ChildImages build() {
    final _$result =
        _$v ?? new _$ChildImages._(width: width, height: height, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
