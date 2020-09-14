
import 'package:juicyfood/src/pages/food_discover.dart';
import 'package:juicyfood/src/pages/foods_by_menu.dart';
import 'package:juicyfood/src/pages/home.dart';
import 'package:juicyfood/src/pages/order_details.dart';
import 'package:juicyfood/src/pages/order_history.dart';
import 'package:juicyfood/src/pages/pages.dart';
import 'package:juicyfood/src/pages/payment_methods.dart';
import 'package:juicyfood/src/pages/profile.dart';
import 'package:juicyfood/src/pages/promo_codes.dart';
import 'package:juicyfood/src/pages/settings.dart';
import 'package:juicyfood/src/pages/share_n_earn.dart';
import 'package:juicyfood/src/pages/support.dart';
import 'package:kf_drawer/kf_drawer.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<FoodDiscoverScreen>(() => FoodDiscoverScreen());
    register<PagesTestWidget>(() => PagesTestWidget());
    register<OrderDetailsScreen>(() => OrderDetailsScreen());
    register<SupportScreen>(() => SupportScreen());
    register<ProfileScreen>(() => ProfileScreen());
    register<PromoCodesScreen>(() => PromoCodesScreen());
    register<ShareNEarn>(() => ShareNEarn());
    register<SettingsScreen>(() => SettingsScreen());
    register<PaymentMethodsScreen>(() => PaymentMethodsScreen());
    register<FoodsByMenuScreen>(() => FoodsByMenuScreen());
    register<OrderHistory>(() => OrderHistory());
    register<Home>(() => Home());

  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}