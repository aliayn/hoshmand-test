import 'package:flutter/material.dart';
import 'package:hoshmand_test/core/di/injection.dart';
import 'package:hoshmand_test/posts/posts.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PostsBloc>(
        create: (context) => inject(),
        child: Scaffold(body: _buildBody()),
      );

  Widget _buildBody() => BlocListener<PostsBloc, PostsState>(
        listener: (context, state) {},
        child: Container(),
      );
}
