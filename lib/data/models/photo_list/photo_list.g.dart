// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoList _$$_PhotoListFromJson(Map<String, dynamic> json) => _$_PhotoList(
      page: json['page'] as int?,
      per_page: json['per_page'] as int?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_results: json['total_results'] as int?,
      next_page: json['next_page'] as String?,
    );

Map<String, dynamic> _$$_PhotoListToJson(_$_PhotoList instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'photos': instance.photos,
      'total_results': instance.total_results,
      'next_page': instance.next_page,
    };
