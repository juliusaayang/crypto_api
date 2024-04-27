import 'dart:async';

import 'package:crypto_api/src/core/routing/multi_navigator_observer.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

extension BuildContextExtension on BuildContext {
  Future<List<Route<dynamic>>> goOrPushNamedAsync(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool push = false,
  }) {
    final completer = Completer<List<Route<dynamic>>>();
    final multiObserver = Navigator.of(this).widget.observers.whereType<MultiNavigatorObserver>().single;
    final callingRoute = ModalRoute.of<dynamic>(this)!;
    final routes = <Route<dynamic>>[];
    void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
      routes.add(route);
      if (callingRoute == previousRoute) {
        completer.complete(routes);
      }
    }

    void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
      if (callingRoute == route) {
        completer.complete(routes);
      }
    }

    multiObserver
      ..addDidPopListener(didPop)
      ..addDidRemoveListener(didRemove);
    if (push) {
      pushNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );
    } else {
      goNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );
    }
    return completer.future.then((value) {
      multiObserver
        ..removeDidRemoveListener(didRemove)
        ..removeDidPopListener(didPop);
      return value;
    });
  }
}
