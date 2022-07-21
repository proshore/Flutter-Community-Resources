
class CommonListApiResponse<T> {
  int? statusCode;
  String? message;
  List<T>? data;

  CommonListApiResponse({this.statusCode, this.message, this.data});

  factory CommonListApiResponse.fromJson(
    Map<String, dynamic> json,
    Function(Map<String, dynamic>) create,
  ) {
    var data = <T>[];

    json['data'].forEach((v) {
      data.add(create(v));
    });
    return CommonListApiResponse<T>(
      statusCode: json['statusCode'],
      message: json['message'],
      data: data,
    );
  }
}
