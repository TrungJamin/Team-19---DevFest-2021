import 'package:devfest_2021/data/models/photo/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_list.freezed.dart';
part 'photo_list.g.dart';

@freezed
abstract class PhotoList with _$PhotoList {
  factory PhotoList({
    int? page,
    int? per_page,
    List<Photo>? photos,
    int? total_results,
    String? next_page,
  }) = _PhotoList;

  factory PhotoList.fromJson(Map<String, dynamic> json) =>
      _$PhotoListFromJson(json);
}
