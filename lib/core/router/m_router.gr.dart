// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'm_router.dart';

class _$MRouter extends RootStackRouter {
  _$MRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LayoutRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LayoutPage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LayoutRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [LayoutPage]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute()
      : super(
          LayoutRoute.name,
          path: '/',
        );

  static const String name = 'LayoutRoute';
}
