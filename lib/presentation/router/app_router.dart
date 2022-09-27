import 'package:bloc_architecture_app/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/exceptions/route_exception.dart';
import '../screens/home_screen/home_screen.dart';

class AppRouter {
  static const String home = '/';
  static const String counter = 'counter';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
          ),
        );
      case counter:
        return MaterialPageRoute(
          builder: (_) => CounterScreen(),
        );

      default:
        throw const RouteException('Route not found!');
    }
  }
}
