import 'package:flutter/material.dart';

var routes = {
  '/': (Object? args) {
    return Text("test");
  }
};

Route onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      return routes[settings.name]!(settings.arguments);
    },
  );
}
