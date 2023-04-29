import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/facts/data/models/cat_fact_dto.dart';

@Injectable()
@preResolve
class LocalStorageService {
  static LocalStorageService? _instance;
  static Box<CatFactDTO>? _catFactBox;
  static const String _catFactBoxName = 'CatFactBox';

  LocalStorageService._();

  @factoryMethod
  static Future<LocalStorageService> getInstance() async {
    if (_instance == null) {
      await Hive.initFlutter();
      Hive.registerAdapter<CatFactDTO>(CatFactDTOAdapter());
      _instance = LocalStorageService._();
      _catFactBox = await Hive.openBox<CatFactDTO>(_catFactBoxName);
    }
    return _instance!;
  }

  Future<void> saveCatFact(CatFactDTO catFact) async {
    await _catFactBox!.put(catFact.id, catFact);
  }

  Future<List<CatFactDTO>> fetchCatFactsHistory() async {
    return _catFactBox!.values.toList();
  }
}
