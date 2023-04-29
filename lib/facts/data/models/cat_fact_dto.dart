import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:whiskerwisdom/facts/domain/entities/cat_fact.dart';

part 'cat_fact_dto.freezed.dart';
part 'cat_fact_dto.g.dart';
part 'cat_fact_dto.hive.dart';

@freezed
class CatFactDTO extends HiveObject with _$CatFactDTO {
  @HiveType(typeId: 1, adapterName: 'CatFactDTOAdapter')
  factory CatFactDTO({
    @HiveField(0) @JsonKey(name: '_id') required String id,
    @HiveField(1) required String text,
    @HiveField(2) required DateTime createdAt,
    @HiveField(3) @Default(false) bool verified,
  }) = _CatFactDTO;

  CatFactDTO._();

  factory CatFactDTO.fromJson(Map<String, dynamic> json) =>
      _$CatFactDTOFromJson(json);
}

// extension for CatFactDTO to CatFact
extension CatFactDTOX on CatFactDTO {
  CatFact toDomain() {
    return CatFact(
      id: id,
      text: text,
      createdAt: createdAt,
      verified: verified,
    );
  }
}
