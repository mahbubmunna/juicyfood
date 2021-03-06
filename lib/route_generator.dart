

import 'package:juicyfood/src/pages/add_address.dart';
import 'package:juicyfood/src/pages/category.dart';
import 'package:juicyfood/src/pages/change_password.dart';
import 'package:juicyfood/src/pages/drawer.dart';
import 'package:juicyfood/src/pages/faq.dart';
import 'package:juicyfood/src/pages/foods_by_menu.dart';
import 'package:juicyfood/src/pages/home.dart';
import 'package:juicyfood/src/pages/login.dart';
import 'package:juicyfood/src/pages/on_boarding.dart';
import 'package:juicyfood/src/pages/order_details.dart';
import 'package:juicyfood/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/src/pages/personal_information.dart';
import 'package:juicyfood/src/pages/privacy_policy.dart';
import 'package:juicyfood/src/pages/registration.dart';
import 'package:juicyfood/src/pages/reset_password.dart';
import 'package:juicyfood/src/pages/restaurant.dart';
import 'package:juicyfood/src/pages/save_address.dart';
import 'package:juicyfood/src/pages/send_message.dart';
import 'package:juicyfood/src/pages/terms_of_use.dart';
import 'models/route_argument.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case '/Home':
        return MaterialPageRoute(builder: (_) => DrawerPage());
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
      case '/AddAddress':
        return MaterialPageRoute(builder: (_) => AddAddressScreen());
      case '/SaveAddress':
        return MaterialPageRoute(builder: (_) => SaveAddressScreen());
      case '/PersonalInformation':
        return MaterialPageRoute(builder: (_) => PersonalInformationScreen());
      case '/ChangePassword':
        return MaterialPageRoute(builder: (_) => ChangePasswordScreen());
      case '/SendMessage':
        return MaterialPageRoute(builder: (_) => SendMessageScreen());
      case '/FAQ':
        return MaterialPageRoute(builder: (_) => FaqScreen());
      case '/TermsOfUse':
        return MaterialPageRoute(builder: (_) => TermsOfUseScreen());
      case '/PrivacyPolicy':
        return MaterialPageRoute(builder: (_) => PrivacyPolicyScreen());
      case '/OrderDetailsScreen':
        return MaterialPageRoute(builder: (_) => OrderDetailsScreen());
      case '/CategoryScreen':
        return MaterialPageRoute(builder: (_) => CategoryScreen(category: args,));
      case '/RestaurantScreen':
        return MaterialPageRoute(builder: (_) => RestaurantScreen(restaurant: args,));
      case '/FoodsByMenuScreen':
        return MaterialPageRoute(builder: (_) => FoodsByMenuScreen(routeArgument: args));


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
