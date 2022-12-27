import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app_logger.dart';

class GlobalErrorHandler with AppLogger {
  GlobalErrorHandler({required Widget app}) {
    if (kReleaseMode) {
      ErrorWidget.builder = (details) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded(() {
      runApp(app);
    }, ((error, stack) {
      //add crashlytics here
      log.e(error);
    }));
  }

  void _handleFlutterError(FlutterErrorDetails details) {
    if (kReleaseMode) {
      //add crashlytics here
      log.e(details.exception);
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  }
}
