import 'package:flutter/widgets.dart';

typedef OnRouteChange = void Function(Route<dynamic> route, Route<dynamic>? previousRoute);

class MultiNavigatorObserver extends NavigatorObserver {
  final List<OnRouteChange> _didPopListeners = [];
  final List<OnRouteChange> _didRemoveListeners = [];

  void addDidPopListener(OnRouteChange listener) {
    _didPopListeners.add(listener);
  }

  void removeDidPopListener(OnRouteChange listener) {
    _didPopListeners.remove(listener);
  }

  void addDidRemoveListener(OnRouteChange listener) {
    _didRemoveListeners.add(listener);
  }

  void removeDidRemoveListener(OnRouteChange listener) {
    _didRemoveListeners.remove(listener);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    for (final listener in _didPopListeners) {
      listener(route, previousRoute);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    for (final listener in _didRemoveListeners) {
      listener(route, previousRoute);
    }
  }
}
