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

import 'blocs/cat_fact/cat_fact_bloc.dart' as _i12;
import 'core/network/network_info.dart' as _i8;
import 'core/network/network_injectable_module.dart' as _i13;
import 'core/storage/local_storage_service.dart' as _i7;
import 'facts/data/api/cat_fact_api.dart' as _i3;
import 'facts/data/datasources/cat_fact_local_data_source.dart' as _i9;
import 'facts/data/datasources/cat_fact_remote_data_source.dart' as _i4;
import 'facts/data/repositories/cat_fact_repository_impl.dart' as _i11;
import 'facts/domain/repositories/cat_fact_repository.dart' as _i10;
import 'facts/injection/injection.dart' as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
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
  await gh.factoryAsync<_i7.LocalStorageService>(
    () => _i7.LocalStorageService.getInstance(),
    preResolve: true,
  );
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfoImpl(gh<_i5.ConnectivityWrapper>()));
  gh.factory<_i9.ICatFactLocalDataSource>(
      () => _i9.CatFactLocalDataSource(gh<_i7.LocalStorageService>()));
  gh.lazySingleton<_i10.CatFactRepository>(() => _i11.CatFactRepositoryImpl(
        remoteDataSource: gh<_i4.CatFactRemoteDataSource>(),
        localDataSource: gh<_i9.ICatFactLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.singleton<_i12.CatFactBloc>(
      _i12.CatFactBloc(gh<_i10.CatFactRepository>()));
  return getIt;
}

class _$NetworkInjectableModule extends _i13.NetworkInjectableModule {}

class _$CatFactInjectableModule extends _i14.CatFactInjectableModule {}
