

import 'app_route.dart';

class NamedRoute {
  final AppAppRoute route;
  final String? overrideRouteName;

  String get routeName => '/${overrideRouteName ?? route.name}';

  NamedRoute({
    required this.route,
    this.overrideRouteName,
  });

  @override
  String toString() {
    return 'NamedRoute{route: $route, overrideRouteName: $overrideRouteName}';
  }
}
