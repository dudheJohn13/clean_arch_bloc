

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule{
  @lazySingleton
  Dio dio() => Dio(BaseOptions(baseUrl: 'http://dummyjson/products'));
}