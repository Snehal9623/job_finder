
import 'package:flutter/material.dart';
import 'package:job_finder/core/navigation/routes.dart';
import 'package:page_transition/page_transition.dart';

import 'app_route.dart';

Route<Object>? generateRoute(RouteSettings settings) {
  final args = settings.arguments;
  final namedRoute = settings.name == '/'
      ? Routes.root
      : Routes.values.firstWhere((element) {
          if (settings.name != null) {
            return settings.name! == '/${element.route.name}';
          }
          return false;
        }, orElse: () => Routes.unknown);
  debugPrint(
      '\n=============== >> (Origin: ${settings.name}) Navigating to: ${namedRoute.toString()}\n');
  switch (namedRoute.route) {
    case AppAppRoute.unknown:
      return _errorRoute();
    // case AppAppRoute.root:
    //   return _buildRoute(settings: settings, screen: SplashScreen());
    // case AppAppRoute.splash:
    //   return _buildRoute(settings: settings, screen: SplashScreen());
    // case AppAppRoute.register:
    //   return _buildRoute(settings: settings, screen: RegistrationForm());
  }
}

Route<Object>? _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}

Route<Object>? _buildRoute(
    {required RouteSettings settings, required Widget screen, bool fullscreenDialog = false}) {
  return CustomMaterialPageRoute(
    settings: settings,
    fullscreenDialog: fullscreenDialog,
    builder: (context) {
      return screen;
    },
  );
}

Route<Object>? _buildBottomToTopRoute(
    {required RouteSettings settings, required Widget screen}) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.bottomToTop,
    settings: settings,
  );
}

Route<Object>? _buildRightToLeftRoute(
    {required RouteSettings settings, required Widget screen}) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.rightToLeft,
    curve: Curves.easeOut,
    duration: Duration(milliseconds: 200),
    settings: settings,
  );
}

/*
Route<Object>? _buildNoAnimationRoute(
        {required RouteSettings settings, required Widget screen}) =>
    NoAnimationMaterialPageRoute(
      settings: settings,
      builder: (context) {
        return screen;
      },
    );
*/

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            builder: builder,
            maintainState: maintainState,
            settings: settings,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

class FadePageRoute<T> extends PageRoute<T> {
  final Widget child;

  FadePageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 700);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

/// Created a customMaterialPageRoute to be used because currently the swipe back gesture doesn't work on iOS if there is WillPopScope
class CustomMaterialPageRoute<T> extends MaterialPageRoute<T> {
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }

  CustomMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
