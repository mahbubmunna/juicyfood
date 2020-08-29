import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/functions/class_builder.dart';
import 'package:juicyfood/src/pages/home.dart';
import 'package:kf_drawer/kf_drawer.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> with TickerProviderStateMixin{
  KFDrawerController _drawerController;

  @override
  void initState() {
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('Home'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.calendar_today, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: Home(),
        ),
      ],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  KFDrawer(
//        borderRadius: 0.0,
//        shadowBorderRadius: 0.0,
//        menuPadding: EdgeInsets.all(0.0),
//        scrollable: true,
      controller: _drawerController,
      header: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          width: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            'assets/img/logo.png',
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      footer: KFDrawerItem(
        text: Text(
          'SIGN IN',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.input,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(
            fullscreenDialog: true,
            builder: (BuildContext context) {
              return Home();
            },
          ));
        },
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromRGBO(255, 255, 255, 1.0), Color.fromRGBO(44, 72, 171, 1.0)],
          tileMode: TileMode.repeated,
        ),
      ),
    );
  }
}
