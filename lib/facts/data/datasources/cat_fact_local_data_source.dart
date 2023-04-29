import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/core/storage/local_storage_service.dart';
import 'package:whiskerwisdom/facts/data/models/cat_fact_dto.dart';

abstract class ICatFactLocalDataSource {
  Future<void> saveCatFact(CatFactDTO catFact);
  Future<List<CatFactDTO>> fetchCatFactsHistory();
}

@Injectable(as: ICatFactLocalDataSource)
class CatFactLocalDataSource implements ICatFactLocalDataSource {
  final LocalStorageService _localStorageService;

  CatFactLocalDataSource(this._localStorageService);

  @override
  Future<void> saveCatFact(CatFactDTO catFact) async {
    await _localStorageService.saveCatFact(catFact);
  }

  @override
  Future<List<CatFactDTO>> fetchCatFactsHistory() async {
    return await _localStorageService.fetchCatFactsHistory();
  }
}
