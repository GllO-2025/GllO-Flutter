/// Http Error Response 객체
class ErrorModel {
  const ErrorModel({
    required this.statusCode,
    required this.errorCode,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      statusCode: json['statusCode'],
      errorCode: json['errorCode'],
      message:
          json['message'] is List<String>
              ? json['message'][0]
              : json['message'],
    );
  }
  final int statusCode;
  final int errorCode;
  final String message;
}
