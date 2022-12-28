import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
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

  PostsBloc(this._apiDataUseCase, this._dbDataUseCase, this._updateDBDataUseCase) : super(const _Initial()) {
    on<PostsEvent>((event, emit) async {
      await event.whenOrNull<FutureOr<void>>(
        started: () => _getPosts(emit),
        retry: () => _getPosts(emit),
      );
    });
  }

  Future<void> _getPosts(Emitter<PostsState> emit) async {
    emit(const PostsState.initial());
    emit(const PostsState.loading());
    final localPosts = await _dbDataUseCase.call(NoParams());
    await localPosts.fold<FutureOr<void>>(
      (failure) => _setError(emit, failure),
      (posts) async => await _getApiPosts(emit, posts),
    );
  }

  Future<void> _getApiPosts(Emitter<PostsState> emit, List<Posts> localPosts) async {
    if (localPosts.isNotEmpty) {
      emit(PostsState.setPostList(localPosts));
    }
    final apiPosts = await _apiDataUseCase.call(NoParams());
    await apiPosts.fold<FutureOr<void>>(
      (failure) => _setError(emit, failure),
      (posts) async => await _updateDatabase(emit, posts),
    );
  }

  Future<void> _updateDatabase(Emitter<PostsState> emit, List<Posts> apiPosts) async {
    emit(PostsState.setPostList(apiPosts));
    await _updateDBDataUseCase.call(apiPosts);
  }

  void _setError(Emitter<PostsState> emit, Failure failure) {
    emit(const PostsState.initial());
    emit(PostsState.error(failure.error));
  }
}
