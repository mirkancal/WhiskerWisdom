import 'package:dartz/dartz.dart';
import 'package:whiskerwisdom/core/error/failures.dart';
import 'package:whiskerwisdom/facts/domain/entities/cat_fact.dart';

abstract class CatFactRepository {
  Future<Either<Failure, CatFact>> getRandomCatFact();
}
