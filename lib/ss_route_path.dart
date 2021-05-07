import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sayur_segar/module/main/presentation/page/main_page_view.dart';

class SSRoutePath {
  static const String main = "main";

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case main:
        return MaterialPageRoute(
          builder: (_) => MainPageView(),
          settings: RouteSettings(name: main),
        );
    }
  }
}
