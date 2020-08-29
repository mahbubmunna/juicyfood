import 'package:juicyfood/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';


class Home extends KFDrawerContent {

  Home({Key key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(S.of(context).home
      ),),
    );
  }
}
