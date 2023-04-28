import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/core/error/exceptions.dart';
import 'package:whiskerwisdom/core/error/failures.dart';
import 'package:whiskerwisdom/core/network/network_info.dart';
import 'package:whiskerwisdom/facts/data/datasources/cat_fact_remote_data_source.dart';
import 'package:whiskerwisdom/facts/data/models/cat_fact_dto.dart';
import 'package:whiskerwisdom/facts/domain/entities/cat_fact.dart';
import 'package:whiskerwisdom/facts/domain/repositories/cat_fact_repository.dart';

@LazySingleton(as: CatFactRepository)
class CatFactRepositoryImpl implements CatFactRepository {
  final CatFactRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CatFactRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, CatFact>> getRandomCatFact() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCatFact = await remoteDataSource.getRandomCatFact();
        return Right(remoteCatFact.toDomain());
      } on ServerException {
        return const Left(Failure.serverFailure());
      }
    } else {
      return const Left(Failure.serverFailure());
    }
  }
}
