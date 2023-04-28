import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({String? message}) = _ServerFailure;
  const factory Failure.cacheFailure({String? message}) = _CacheFailure;
}
