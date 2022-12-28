// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/im_logged_in.dart';
import './step/the_be_will_respond_with_empty_posts_list_from_local.dart';
import './step/the_be_will_respond_with_posts_list_from_internet.dart';
import './step/the_be_will_update_local_database_with_api_list.dart';
import './step/the_app_is_running.dart';
import './step/i_see_posts_list.dart';

void main() {
  group('''Posts List''', () {
    testWidgets('''Get Posts''', (tester) async {
      await imLoggedIn(tester);
      await theBeWillRespondWithEmptyPostsListFromLocal(tester);
      await theBeWillRespondWithPostsListFromInternet(tester);
      await theBeWillUpdateLocalDatabaseWithApiList(tester);
      await theAppIsRunning(tester);
      await iSeePostsList(tester);
    });
  });
}
