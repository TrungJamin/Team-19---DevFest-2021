// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call(
      {int? id,
      int? width,
      int? height,
      int? photographer_id,
      String? url,
      String? photographer,
      String? photographer_url,
      String? avg_color,
      Source? src,
      bool? liked}) {
    return _Photo(
      id: id,
      width: width,
      height: height,
      photographer_id: photographer_id,
      url: url,
      photographer: photographer,
      photographer_url: photographer_url,
      avg_color: avg_color,
      src: src,
      liked: liked,
    );
  }

  Photo fromJson(Map<String, Object> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  int? get id => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get photographer_id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get photographer => throw _privateConstructorUsedError;
  String? get photographer_url => throw _privateConstructorUsedError;
  String? get avg_color => throw _privateConstructorUsedError;
  Source? get src => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? width,
      int? height,
      int? photographer_id,
      String? url,
      String? photographer,
      String? photographer_url,
      String? avg_color,
      Source? src,
      bool? liked});

  $SourceCopyWith<$Res>? get src;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? photographer_id = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographer_url = freezed,
    Object? avg_color = freezed,
    Object? src = freezed,
    Object? liked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      photographer_id: photographer_id == freezed
          ? _value.photographer_id
          : photographer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_url: photographer_url == freezed
          ? _value.photographer_url
          : photographer_url // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_color: avg_color == freezed
          ? _value.avg_color
          : avg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Source?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $SourceCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $SourceCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? width,
      int? height,
      int? photographer_id,
      String? url,
      String? photographer,
      String? photographer_url,
      String? avg_color,
      Source? src,
      bool? liked});

  @override
  $SourceCopyWith<$Res>? get src;
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? photographer_id = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographer_url = freezed,
    Object? avg_color = freezed,
    Object? src = freezed,
    Object? liked = freezed,
  }) {
    return _then(_Photo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      photographer_id: photographer_id == freezed
          ? _value.photographer_id
          : photographer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer_url: photographer_url == freezed
          ? _value.photographer_url
          : photographer_url // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_color: avg_color == freezed
          ? _value.avg_color
          : avg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Source?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  _$_Photo(
      {this.id,
      this.width,
      this.height,
      this.photographer_id,
      this.url,
      this.photographer,
      this.photographer_url,
      this.avg_color,
      this.src,
      this.liked});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  final int? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? photographer_id;
  @override
  final String? url;
  @override
  final String? photographer;
  @override
  final String? photographer_url;
  @override
  final String? avg_color;
  @override
  final Source? src;
  @override
  final bool? liked;

  @override
  String toString() {
    return 'Photo(id: $id, width: $width, height: $height, photographer_id: $photographer_id, url: $url, photographer: $photographer, photographer_url: $photographer_url, avg_color: $avg_color, src: $src, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.photographer_id, photographer_id) ||
                const DeepCollectionEquality()
                    .equals(other.photographer_id, photographer_id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.photographer, photographer) ||
                const DeepCollectionEquality()
                    .equals(other.photographer, photographer)) &&
            (identical(other.photographer_url, photographer_url) ||
                const DeepCollectionEquality()
                    .equals(other.photographer_url, photographer_url)) &&
            (identical(other.avg_color, avg_color) ||
                const DeepCollectionEquality()
                    .equals(other.avg_color, avg_color)) &&
            (identical(other.src, src) ||
                const DeepCollectionEquality().equals(other.src, src)) &&
            (identical(other.liked, liked) ||
                const DeepCollectionEquality().equals(other.liked, liked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(photographer_id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(photographer) ^
      const DeepCollectionEquality().hash(photographer_url) ^
      const DeepCollectionEquality().hash(avg_color) ^
      const DeepCollectionEquality().hash(src) ^
      const DeepCollectionEquality().hash(liked);

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {int? id,
      int? width,
      int? height,
      int? photographer_id,
      String? url,
      String? photographer,
      String? photographer_url,
      String? avg_color,
      Source? src,
      bool? liked}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get width => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  int? get photographer_id => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get photographer => throw _privateConstructorUsedError;
  @override
  String? get photographer_url => throw _privateConstructorUsedError;
  @override
  String? get avg_color => throw _privateConstructorUsedError;
  @override
  Source? get src => throw _privateConstructorUsedError;
  @override
  bool? get liked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
