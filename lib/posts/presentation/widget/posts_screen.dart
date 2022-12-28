import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoshmand_test/core/di/injection.dart';
import 'package:hoshmand_test/core/locale/locale_keys.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/posts.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PostsBloc>(
        create: (context) => inject(),
        child: Scaffold(
          appBar: _appBar(context),
          body: _buildContent(),
        ),
      );

  AppBar _appBar(BuildContext context) => AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.postHeader.tr,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      );

  Widget _buildContent() => BlocListener<PostsBloc, PostsState>(
        listener: (context, state) {},
        child: _buildBody(),
      );

  Widget _buildBody() => BlocBuilder<PostsBloc, PostsState>(
        buildWhen: (previous, current) =>
            current.whenOrNull(loading: () => true, setPostList: (posts) => true) ?? false,
        builder: (context, state) => state.maybeWhen(
          loading: () => _loading(),
          setPostList: (posts) => _showPostsList(posts),
          orElse: (() => const SizedBox()),
        ),
      );

  Widget _loading() => const SizedBox.expand(
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      );

  Widget _showPostsList(List<Posts> posts) {
    return ListView();
  }
}
