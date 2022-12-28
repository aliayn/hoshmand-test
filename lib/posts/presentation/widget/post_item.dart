import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoshmand_test/core/locale/locale_keys.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:sizer/sizer.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.posts});
  final Posts posts;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
        padding: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.h, bottom: 1.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10.0) //
              ),
        ),
        child: _buildContent(),
      );

  Widget _buildContent() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemDetail(LocaleKeys.postTitle.tr, posts.title ?? LocaleKeys.postNoTitle.tr),
          _itemDetail(LocaleKeys.postBody.tr, posts.title ?? LocaleKeys.postNoBody.tr),
        ],
      );

  Widget _itemDetail(String title, String value) => Builder(
      builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
                ),
              ],
            ),
          ));
}
