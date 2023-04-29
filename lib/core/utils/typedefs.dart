import 'package:dartz/dartz.dart';
import 'package:whiskerwisdom/core/error/failures.dart';

import '../../facts/domain/entities/cat_fact.dart';

typedef CatFactHistoryResult = Either<Failure, List<CatFact>>;
typedef CatFactResult = Either<Failure, CatFact>;
