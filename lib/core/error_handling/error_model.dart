import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/error_model.g.dart';

/// Http Error Response 객체
@JsonSerializable()
class ErrorModel {
  factory ErrorModel.fromJson(json) {
    if (json == null || json is! Map<String, dynamic>) {
      return ErrorModel();
    }

    return ErrorModel(
      status: json['status'] as String,
      errorMessage:
          json['errorMessage'] == null
              ? const ErrorModelMessage()
              : ErrorModelMessage.fromJson(
                json['errorMessage'] as Map<String, dynamic>,
              ),
    );
  }

  ErrorModel({this.status = '', this.errorMessage = const ErrorModelMessage()});

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
