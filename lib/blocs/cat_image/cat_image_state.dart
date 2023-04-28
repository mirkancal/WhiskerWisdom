part of 'cat_image_bloc.dart';

@freezed
class CatImageState with _$CatImageState {
  const factory CatImageState.loading() = _Initial;
  const factory CatImageState.loaded(String url) = _Loaded;
}
