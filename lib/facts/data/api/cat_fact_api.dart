import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/cat_fact_dto.dart';

part 'cat_fact_api.g.dart';

@RestApi()
abstract class CatFactApi {
  factory CatFactApi(Dio dio, {String? baseUrl}) = _CatFactApi;

  @GET('/facts/random')
  Future<CatFactDTO> getRandomCatFact(
      {@Query('animal_type') String animalType = 'cat',
      @Query('amount') int amount = 1});
}
