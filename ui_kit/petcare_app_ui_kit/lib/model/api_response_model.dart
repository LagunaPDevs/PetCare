import 'dart:convert';

ApiResponseModel apiResponseModelFromJson(String str) =>
    ApiResponseModel.fromJson(json.decode(str));

String apiResponseModelToJson(ApiResponseModel data) =>
    json.encode(data.toJson());

class ApiResponseModel {
  int code;
  String type;
  String message;

  ApiResponseModel({
    required this.code,
    required this.type,
    required this.message,
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      ApiResponseModel(
        code: json["code"],
        type: json["type"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "type": type,
        "message": message,
      };
}
