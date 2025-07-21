// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
  status: json['status'] as String,
  errorMessage:
      json['errorMessage'] == null
          ? const ErrorModelMessage()
          : ErrorModelMessage.fromJson(
            json['errorMessage'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorMessage': instance.errorMessage,
    };

ErrorModelMessage _$ErrorModelMessageFromJson(Map<String, dynamic> json) =>
    ErrorModelMessage(message: json['message'] as String? ?? '');

Map<String, dynamic> _$ErrorModelMessageToJson(ErrorModelMessage instance) =>
    <String, dynamic>{'message': instance.message};
