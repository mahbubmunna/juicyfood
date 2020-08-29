
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

changeStatusBarColor(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).accentColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
  ));
}
