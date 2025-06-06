// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_clean_architecture/core/di/RegisterModule.dart'
    as _i596;
import 'package:flutter_clean_architecture/features/user/data/datasources/user_remote_data_source.dart'
    as _i851;
import 'package:flutter_clean_architecture/features/user/data/repositories/user_repository.dart'
    as _i516;
import 'package:flutter_clean_architecture/features/user/domain/repositories/UserRepositoryImpl.dart'
    as _i588;
import 'package:flutter_clean_architecture/features/user/domain/usecases/get_user_use_case.dart'
    as _i134;
import 'package:flutter_clean_architecture/features/user/presentation/bloc/user_bloc.dart'
    as _i540;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i851.UserRemoteDataSource>(
      () => _i851.UserRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i516.UserRepository>(
      () => _i588.UserRepositoryImpl(gh<_i851.UserRemoteDataSource>()),
    );
    gh.factory<_i134.GetUserUseCase>(
      () => _i134.GetUserUseCase(gh<_i516.UserRepository>()),
    );
    gh.factory<_i540.UserBloc>(
      () => _i540.UserBloc(gh<_i134.GetUserUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i596.RegisterModule {}
