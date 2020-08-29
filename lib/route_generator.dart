

import 'package:juicyfood/src/pages/drawer.dart';
import 'package:juicyfood/src/pages/home.dart';
import 'package:juicyfood/src/pages/login.dart';
import 'package:juicyfood/src/pages/on_boarding.dart';
import 'package:juicyfood/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/src/pages/registration.dart';
import 'package:juicyfood/src/pages/reset_password.dart';
import 'models/route_argument.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case '/Login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/Registration':
        return MaterialPageRoute(builder: (_) => Registration());
      case '/ResetPassword':
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case '/Home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/Drawer':
        return MaterialPageRoute(builder: (_) => DrawerPage());


      default:
        // If there is no such named route in the switch statement, e.g. /third changes
        return MaterialPageRoute(builder: (_) => PagesTestWidget(currentTab: 2));
    }
  }

  static Route<dynamic> _errorRoute() {
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
}
