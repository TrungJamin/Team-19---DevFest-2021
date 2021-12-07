// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoList _$PhotoListFromJson(Map<String, dynamic> json) {
  return _PhotoList.fromJson(json);
}

/// @nodoc
class _$PhotoListTearOff {
  const _$PhotoListTearOff();

  _PhotoList call(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? total_results,
      String? next_page}) {
    return _PhotoList(
      page: page,
      per_page: per_page,
      photos: photos,
      total_results: total_results,
      next_page: next_page,
    );
  }

  PhotoList fromJson(Map<String, Object> json) {
    return PhotoList.fromJson(json);
  }
}

/// @nodoc
const $PhotoList = _$PhotoListTearOff();

/// @nodoc
mixin _$PhotoList {
  int? get page => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;
  String? get next_page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoListCopyWith<PhotoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListCopyWith<$Res> {
  factory $PhotoListCopyWith(PhotoList value, $Res Function(PhotoList) then) =
      _$PhotoListCopyWithImpl<$Res>;
  $Res call(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? total_results,
      String? next_page});
}

/// @nodoc
class _$PhotoListCopyWithImpl<$Res> implements $PhotoListCopyWith<$Res> {
  _$PhotoListCopyWithImpl(this._value, this._then);

  final PhotoList _value;
  // ignore: unused_field
  final $Res Function(PhotoList) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? photos = freezed,
    Object? total_results = freezed,
    Object? next_page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      next_page: next_page == freezed
          ? _value.next_page
          : next_page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PhotoListCopyWith<$Res> implements $PhotoListCopyWith<$Res> {
  factory _$PhotoListCopyWith(
          _PhotoList value, $Res Function(_PhotoList) then) =
      __$PhotoListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? total_results,
      String? next_page});
}

/// @nodoc
class __$PhotoListCopyWithImpl<$Res> extends _$PhotoListCopyWithImpl<$Res>
    implements _$PhotoListCopyWith<$Res> {
  __$PhotoListCopyWithImpl(_PhotoList _value, $Res Function(_PhotoList) _then)
      : super(_value, (v) => _then(v as _PhotoList));

  @override
  _PhotoList get _value => super._value as _PhotoList;

  @override
  $Res call({
    Object? page = freezed,
    Object? per_page = freezed,
    Object? photos = freezed,
    Object? total_results = freezed,
    Object? next_page = freezed,
  }) {
    return _then(_PhotoList(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      next_page: next_page == freezed
          ? _value.next_page
          : next_page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoList implements _PhotoList {
  _$_PhotoList(
      {this.page,
      this.per_page,
      this.photos,
      this.total_results,
      this.next_page});

  factory _$_PhotoList.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoListFromJson(json);

  @override
  final int? page;
  @override
  final int? per_page;
  @override
  final List<Photo>? photos;
  @override
  final int? total_results;
  @override
  final String? next_page;

  @override
  String toString() {
    return 'PhotoList(page: $page, per_page: $per_page, photos: $photos, total_results: $total_results, next_page: $next_page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoList &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.per_page, per_page) ||
                const DeepCollectionEquality()
                    .equals(other.per_page, per_page)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.total_results, total_results) ||
                const DeepCollectionEquality()
                    .equals(other.total_results, total_results)) &&
            (identical(other.next_page, next_page) ||
                const DeepCollectionEquality()
                    .equals(other.next_page, next_page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(per_page) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(total_results) ^
      const DeepCollectionEquality().hash(next_page);

  @JsonKey(ignore: true)
  @override
  _$PhotoListCopyWith<_PhotoList> get copyWith =>
      __$PhotoListCopyWithImpl<_PhotoList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoListToJson(this);
  }
}

abstract class _PhotoList implements PhotoList {
  factory _PhotoList(
      {int? page,
      int? per_page,
      List<Photo>? photos,
      int? total_results,
      String? next_page}) = _$_PhotoList;

  factory _PhotoList.fromJson(Map<String, dynamic> json) =
      _$_PhotoList.fromJson;

  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get per_page => throw _privateConstructorUsedError;
  @override
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @override
  int? get total_results => throw _privateConstructorUsedError;
  @override
  String? get next_page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoListCopyWith<_PhotoList> get copyWith =>
      throw _privateConstructorUsedError;
}
