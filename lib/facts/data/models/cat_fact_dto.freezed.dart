// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_fact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactDTO _$CatFactDTOFromJson(Map<String, dynamic> json) {
  return _CatFactDTO.fromJson(json);
}

/// @nodoc
mixin _$CatFactDTO {
  @HiveField(0)
  String get text => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactDTOCopyWith<CatFactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactDTOCopyWith<$Res> {
  factory $CatFactDTOCopyWith(
          CatFactDTO value, $Res Function(CatFactDTO) then) =
      _$CatFactDTOCopyWithImpl<$Res, CatFactDTO>;
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) DateTime createdAt,
      @HiveField(2) bool verified});
}

/// @nodoc
class _$CatFactDTOCopyWithImpl<$Res, $Val extends CatFactDTO>
    implements $CatFactDTOCopyWith<$Res> {
  _$CatFactDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? createdAt = null,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatFactDTOCopyWith<$Res>
    implements $CatFactDTOCopyWith<$Res> {
  factory _$$_CatFactDTOCopyWith(
          _$_CatFactDTO value, $Res Function(_$_CatFactDTO) then) =
      __$$_CatFactDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) DateTime createdAt,
      @HiveField(2) bool verified});
}

/// @nodoc
class __$$_CatFactDTOCopyWithImpl<$Res>
    extends _$CatFactDTOCopyWithImpl<$Res, _$_CatFactDTO>
    implements _$$_CatFactDTOCopyWith<$Res> {
  __$$_CatFactDTOCopyWithImpl(
      _$_CatFactDTO _value, $Res Function(_$_CatFactDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? createdAt = null,
    Object? verified = null,
  }) {
    return _then(_$_CatFactDTO(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'CatFactDTOAdapter')
class _$_CatFactDTO extends _CatFactDTO {
  _$_CatFactDTO(
      {@HiveField(0) required this.text,
      @HiveField(1) required this.createdAt,
      @HiveField(2) this.verified = false})
      : super._();

  factory _$_CatFactDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactDTOFromJson(json);

  @override
  @HiveField(0)
  final String text;
  @override
  @HiveField(1)
  final DateTime createdAt;
  @override
  @JsonKey()
  @HiveField(2)
  final bool verified;

  @override
  String toString() {
    return 'CatFactDTO(text: $text, createdAt: $createdAt, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactDTO &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, createdAt, verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactDTOCopyWith<_$_CatFactDTO> get copyWith =>
      __$$_CatFactDTOCopyWithImpl<_$_CatFactDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactDTOToJson(
      this,
    );
  }
}

abstract class _CatFactDTO extends CatFactDTO {
  factory _CatFactDTO(
      {@HiveField(0) required final String text,
      @HiveField(1) required final DateTime createdAt,
      @HiveField(2) final bool verified}) = _$_CatFactDTO;
  _CatFactDTO._() : super._();

  factory _CatFactDTO.fromJson(Map<String, dynamic> json) =
      _$_CatFactDTO.fromJson;

  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  DateTime get createdAt;
  @override
  @HiveField(2)
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactDTOCopyWith<_$_CatFactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
