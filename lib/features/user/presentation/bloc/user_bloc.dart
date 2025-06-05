import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/user/domain/usecases/get_user_use_case.dart';
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase getUserUseCase;

  UserBloc(this.getUserUseCase) : super(UserInitial()) {
    on<FetchUsers>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await getUserUseCase();
        emit(UserLoaded(users));
      } catch (_) {
        emit(UserError("Failed to load users"));
      }
    });
  }
}
