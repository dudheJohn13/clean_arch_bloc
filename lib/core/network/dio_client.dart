import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient._internal(this.dio);

  static DioClient? _dioClient;

  factory DioClient() {
    _dioClient ??= DioClient._internal(
      Dio(BaseOptions(baseUrl: 'http://dummyJson.com')),
    );
    return _dioClient!;
  }
}
