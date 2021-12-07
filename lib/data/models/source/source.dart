import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
abstract class Source with _$Source {
  factory Source({
    String? original,
    String? large2x,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
