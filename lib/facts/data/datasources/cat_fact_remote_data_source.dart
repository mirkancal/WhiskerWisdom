import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/facts/data/api/cat_fact_api.dart';
import 'package:whiskerwisdom/facts/data/models/cat_fact_dto.dart';

abstract class CatFactRemoteDataSource {
  Future<CatFactDTO> getRandomCatFact();
}

@LazySingleton(as: CatFactRemoteDataSource)
class CatFactRemoteDataSourceImpl implements CatFactRemoteDataSource {
  final CatFactApi api;

  CatFactRemoteDataSourceImpl({required this.api});

  @override
  Future<CatFactDTO> getRandomCatFact() async {
    return await api.getRandomCatFact();
  }
}
