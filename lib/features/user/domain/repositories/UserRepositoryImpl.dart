

import 'package:flutter_clean_architecture/features/user/data/datasources/user_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:flutter_clean_architecture/features/user/data/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : UserRepository)
class UserRepositoryImpl implements UserRepository{
  final UserRemoteDataSource dataSource;
  // final UserLocalDataSource userLocalDataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<List<UserModel>> getUsers() async {
    return dataSource.getUsers();

    // final data = userLocalDataSource.storedata(reponse);
    // return data;
  }

}