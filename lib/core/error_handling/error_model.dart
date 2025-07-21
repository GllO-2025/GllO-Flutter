import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/error_model.g.dart';

/// Http Error Response 객체
@JsonSerializable()
class ErrorModel {
  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  ErrorModel({
    required this.status,
    this.errorMessage = const ErrorModelMessage(),
  });

  final String status;
  final ErrorModelMessage errorMessage;
}

@JsonSerializable()
class ErrorModelMessage {
  factory ErrorModelMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelMessageFromJson(json);

  const ErrorModelMessage({this.message = ''});
  final String message;
}
