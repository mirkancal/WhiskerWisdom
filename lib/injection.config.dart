// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_checker/connectivity_checker.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'blocs/cat_fact/cat_fact_bloc.dart' as _i10;
import 'core/network/network_info.dart' as _i7;
import 'core/network/network_injectable_module.dart' as _i11;
import 'facts/data/api/cat_fact_api.dart' as _i3;
import 'facts/data/datasources/cat_fact_remote_data_source.dart' as _i4;
import 'facts/data/repositories/cat_fact_repository_impl.dart' as _i9;
import 'facts/domain/repositories/cat_fact_repository.dart' as _i8;
import 'facts/injection/injection.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final catFactInjectableModule = _$CatFactInjectableModule();
    final networkInjectableModule = _$NetworkInjectableModule();
    gh.lazySingleton<_i3.CatFactApi>(() => catFactInjectableModule.catFactApi);
    gh.lazySingleton<_i4.CatFactRemoteDataSource>(
        () => _i4.CatFactRemoteDataSourceImpl(api: gh<_i3.CatFactApi>()));
    gh.lazySingleton<_i5.ConnectivityWrapper>(
        () => networkInjectableModule.connectivityWrapper);
    gh.lazySingleton<_i6.Dio>(() => catFactInjectableModule.dio);
    gh.lazySingleton<_i7.NetworkInfo>(
        () => _i7.NetworkInfoImpl(gh<_i5.ConnectivityWrapper>()));
    gh.lazySingleton<_i8.CatFactRepository>(() => _i9.CatFactRepositoryImpl(
          remoteDataSource: gh<_i4.CatFactRemoteDataSource>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.singleton<_i10.CatFactBloc>(
        _i10.CatFactBloc(gh<_i8.CatFactRepository>()));
    return this;
  }
}

class _$NetworkInjectableModule extends _i11.NetworkInjectableModule {}

class _$CatFactInjectableModule extends _i12.CatFactInjectableModule {}
