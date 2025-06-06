

/*abstract class UserState{}

class UserInitial extends UserState{}
class UserLoading extends UserState{}
class UserLoaded extends UserState{
  final List<dynamic> users;
  UserLoaded(this.users);
}

class UserError extends UserState{
 final String message;
 UserError(this.message);

}*/
import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState{
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded(List<UserModel> user) = UserLoaded;
  const factory UserState.error(String message) = UserError;

}

