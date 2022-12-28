import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/posts.dart';
import 'package:hoshmand_test/posts/presentation/widget/post_item.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PostsBloc>(
        create: (context) => inject()..add(const PostsEvent.started()),
        child: Scaffold(
          appBar: _appBar(context),
          body: _buildContent(),
        ),
      );

  AppBar _appBar(BuildContext context) => AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.postHeader.tr,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      );

  Widget _buildContent() => BlocListener<PostsBloc, PostsState>(
        listener: (context, state) => state.whenOrNull(
          error: (message) => showErrorMessage(context, message),
        ),
        child: _buildBody(),
      );

  void showErrorMessage(BuildContext context, String error) => showErrorSnackBar(
        context: context,
        message: error,
      );

  Widget _buildBody() => BlocBuilder<PostsBloc, PostsState>(
        buildWhen: (previous, current) =>
            current.whenOrNull(
              loading: () => true,
              setPostList: (posts) => true,
              error: (message) => true,
            ) ??
            false,
        builder: (context, state) => state.maybeWhen(
          loading: () => _loading(),
          setPostList: (posts) => _showPostsList(posts),
          error: (message) => _retry(message),
          orElse: (() => const SizedBox()),
        ),
      );

  Widget _loading() => const SizedBox.expand(
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      );

  Widget _retry(String error) => Builder(
      builder: (context) => SizedBox.expand(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: (() {
                        context.read<PostsBloc>().add(const PostsEvent.retry());
                      }),
                      child: Text(
                        LocaleKeys.postRetry.tr,
                        style: Theme.of(context).textTheme.titleMedium,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      error,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ),
          ));

  Widget _showPostsList(List<Posts> posts) => ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) => PostItem(posts: posts[index])),
      );
}
