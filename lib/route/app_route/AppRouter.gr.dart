// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:chatt/main.dart' as _i5;
import 'package:chatt/pages/dashboard/chat/MessageScreen.dart' as _i4;
import 'package:chatt/pages/dashboard/Dashboard.dart' as _i1;
import 'package:chatt/pages/introduction/IntroPage.dart' as _i2;
import 'package:chatt/pages/login/Login.dart' as _i3;
import 'package:chatt/pages/stim/Stim.dart' as _i6;
import 'package:chatt/pages/testing/Testing.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    IntroPage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.IntroPage(),
      );
    },
    LoginPage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MessageScreen(),
      );
    },
    MyHomePage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MyHomePage(),
      );
    },
    StimRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.StimScreen(),
      );
    },
    TestingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TestingScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntroPage]
class IntroPage extends _i8.PageRouteInfo<void> {
  const IntroPage({List<_i8.PageRouteInfo>? children})
      : super(
          IntroPage.name,
          initialChildren: children,
        );

  static const String name = 'IntroPage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginPage extends _i8.PageRouteInfo<void> {
  const LoginPage({List<_i8.PageRouteInfo>? children})
      : super(
          LoginPage.name,
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MessageScreen]
class MessageRoute extends _i8.PageRouteInfo<void> {
  const MessageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyHomePage]
class MyHomePage extends _i8.PageRouteInfo<void> {
  const MyHomePage({List<_i8.PageRouteInfo>? children})
      : super(
          MyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'MyHomePage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StimScreen]
class StimRoute extends _i8.PageRouteInfo<void> {
  const StimRoute({List<_i8.PageRouteInfo>? children})
      : super(
          StimRoute.name,
          initialChildren: children,
        );

  static const String name = 'StimRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TestingScreen]
class TestingRoute extends _i8.PageRouteInfo<void> {
  const TestingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TestingRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
