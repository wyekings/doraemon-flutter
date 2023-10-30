import 'dart:async';

import 'package:doraemon/ui/doraemon.dart';
import 'package:flutter/material.dart';

void main() {
  var onError = FlutterError.onError;
  FlutterError.onError = (FlutterErrorDetails details) {
    onError?.call(details);
    // handle caught error
  };
  runZoned(
    () => runApp(const DoraemonApp()),
    zoneSpecification: ZoneSpecification(
      handleUncaughtError: (Zone self, ZoneDelegate parent, Zone zone,
          Object error, StackTrace stackTrace) {
        // handle uncaught error
      },
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        // interceptor print
      },
    ),
  );
}
