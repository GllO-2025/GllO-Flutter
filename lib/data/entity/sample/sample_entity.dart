import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sample_entity.g.dart';

@JsonSerializable()
class SampleEntity {
  const SampleEntity({
    required this.id,
    required this.title,
    required this.content,
  });

  factory SampleEntity.fromJson(Map<String, dynamic> json) =>
      _$SampleEntityFromJson(json);
  final String id;
  final String title;
  final String content;
}
