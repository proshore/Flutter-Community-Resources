
class CommonSingleApiResponse<T> {

  int? statusCode;
  String? message;
  dynamic data;

  CommonSingleApiResponse(
      {this.statusCode,
        this.message,
      this.data});

  factory CommonSingleApiResponse.fromJson(
      Map<String, dynamic> json,
      Function(Map<String, dynamic>) create,
      ) {
    return CommonSingleApiResponse<T>(
      statusCode: json['statusCode'],
      message: json['message'],
      data: create(json["Data"]),
    );
  }
}
