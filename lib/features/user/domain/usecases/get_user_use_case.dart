import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:flutter_clean_architecture/features/user/data/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase{
 final UserRepository repository;

 GetUserUseCase(this.repository);

 Future<List<UserModel>> call() => repository.getUsers();
 Future<List<UserModel>> getUsers() => repository.getUsers();

}