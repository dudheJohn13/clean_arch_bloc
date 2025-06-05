

import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';

abstract class UserRepository{
  Future<List<UserModel>> getUsers();
}