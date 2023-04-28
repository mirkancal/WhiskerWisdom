import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/facts/data/datasources/cat_fact_remote_data_source.dart';

import '../data/api/cat_fact_api.dart';

@module
abstract class CatFactInjectableModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://cat-fact.herokuapp.com',
          contentType: 'application/json',
        ),
      );

  @lazySingleton
  CatFactApi get catFactApi => CatFactApi(dio);
}
