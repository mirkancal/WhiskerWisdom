import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image_event.dart';
part 'cat_image_state.dart';
part 'cat_image_bloc.freezed.dart';

class CatImageBloc extends Bloc<CatImageEvent, CatImageState> {
  CatImageBloc() : super(_Initial()) {
    on<CatImageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
