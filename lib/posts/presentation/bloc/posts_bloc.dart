import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hoshmand_test/posts/domain/use_case/get_api_data_use_case.dart';
import 'package:hoshmand_test/posts/domain/use_case/get_db_data_use_case.dart';
import 'package:hoshmand_test/posts/domain/use_case/update_db_data_use_case.dart';
import 'package:injectable/injectable.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetApiDataUseCase _apiDataUseCase;
  final GetDBDataUseCase _dbDataUseCase;
  final UpdateDBDataUseCase _updateDBDataUseCase;

  PostsBloc(
      this._apiDataUseCase, this._dbDataUseCase, this._updateDBDataUseCase)
      : super(const _Initial()) {
    on<PostsEvent>((event, emit) {});
  }
}
