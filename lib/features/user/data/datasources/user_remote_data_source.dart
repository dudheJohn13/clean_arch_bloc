import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSourceImpl(this.dio);

  @override
  Future<List<UserModel>> getUsers() async {
    final response = await dio.get("/user");

    return (response.data as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }
}
