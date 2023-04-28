import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whiskerwisdom/facts/domain/entities/cat_fact.dart';
import 'package:whiskerwisdom/facts/domain/repositories/cat_fact_repository.dart';

part 'cat_fact_event.dart';
part 'cat_fact_state.dart';
part 'cat_fact_bloc.freezed.dart';

@singleton
class CatFactBloc extends Bloc<CatFactEvent, CatFactState> {
  CatFactBloc(this.repository) : super(const _Loading()) {
    on<CatFactEvent>((event, emit) async {
      await event.map(loadFact: (_) async {
        emit(const _Loading());
        try {
          final result = await repository.getRandomCatFact();

          if (result.isRight()) {
            emit(_Loaded(result.getOrElse(() => throw Exception())));
          } else {
            emit(const _Error());
          }
        } catch (e) {
          emit(const _Error());
        }
      });
    });
  }
  final CatFactRepository repository;
}
