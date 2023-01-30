import 'app_route.dart';
import 'named_route.dart';

class Routes {
  static List<NamedRoute> values = [
    unknown,
    splash,
    login,
    verify,
    register
  ];

  static NamedRoute get root =>
      NamedRoute(route: AppAppRoute.root, overrideRouteName: '');

  static NamedRoute get unknown => NamedRoute(
        route: AppAppRoute.unknown,
      );

  static NamedRoute get splash => NamedRoute(
        route: AppAppRoute.splash,
      );

  static NamedRoute get login => NamedRoute(
      route: AppAppRoute.login
  );
  static NamedRoute get verify => NamedRoute(
      route: AppAppRoute.verify
  );
  static NamedRoute get register => NamedRoute(
      route: AppAppRoute.register
  );
}
