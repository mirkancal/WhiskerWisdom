part of 'cat_fact_bloc.dart';

@freezed
class CatFactState with _$CatFactState {
  const factory CatFactState.loading() = _Loading;
  const factory CatFactState.loaded(CatFact fact) = _Loaded;
  const factory CatFactState.error() = _Error;
}
