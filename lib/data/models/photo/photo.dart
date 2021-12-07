import 'package:devfest_2021/data/models/source/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
abstract class Photo with _$Photo {
  factory Photo({
    int? id,
    int? width,
    int? height,
    int? photographer_id,
    String? url,
    String? photographer,
    String? photographer_url,
    String? avg_color,
    Source? src,
    bool? liked,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
