

import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  final Database db;

  UserDao(this.db);

  Future<int> insertUser(UserModel useModel) async {
    return await db.insert('users', useModel.toJson());
  }

  Future<List<UserModel>> getUsers() async {
    final result = db.query('users');
    return result.map((e) => UserModel.fromJson(e));
  }
}