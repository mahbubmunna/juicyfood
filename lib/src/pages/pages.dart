import 'package:juicyfood/elements/DrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/src/pages/cart.dart';
import 'package:juicyfood/src/pages/delivery.dart';
import 'package:juicyfood/src/pages/discovery.dart';
import 'package:juicyfood/src/pages/profile.dart';
import 'package:kf_drawer/kf_drawer.dart';


import 'home.dart';
import 'notifications.dart';

// ignore: must_be_immutable
class PagesTestWidget extends KFDrawerContent {
  int currentTab;
  Widget currentPage = Home();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  PagesTestWidget({
    Key key,
    this.currentTab,
  }) {
    currentTab = currentTab != null ? currentTab : 2;
  }

  @override
  _PagesTestWidgetState createState() {
    return _PagesTestWidgetState();
  }
}

class _PagesTestWidgetState extends State<PagesTestWidget> {
  initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  @override
  void didUpdateWidget(PagesTestWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage = DiscoveryScreen();
          break;
        case 1:
          widget.currentPage = DeliveryScreen();
          break;
        case 2:
          widget.currentPage = ProfileScreen();
          break;
        case 3:
          widget.currentPage = NotificationScreen();
          break;
        case 4:
          widget.currentPage = CartScreen();
          break;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: widget.scaffoldKey,
        body: widget.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).accentColor,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          iconSize: 24  ,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 30, color: Theme.of(context).accentColor),
          unselectedItemColor: Colors.black54,
          currentIndex: widget.currentTab,
          onTap: (int i) {
            this._selectTab(i);
          },
          // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.public ),
              title: Container(child: Text(S.of(context).discover),),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.local_shipping),
              title: Container(child: Text('Delivery'),),
            ),
            BottomNavigationBarItem(
              title: Container(child: Text('Account')),
                icon: Container(
//                  decoration: BoxDecoration(
//                    color: Theme.of(context).accentColor,
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(50),
//                    ),
//                    boxShadow: [
//                      BoxShadow(
//                          color: Theme.of(context).accentColor.withOpacity(0.4), blurRadius: 40, offset: Offset(0, 15)),
//                      BoxShadow(
//                          color: Theme.of(context).accentColor.withOpacity(0.4), blurRadius: 13, offset: Offset(0, 3))
//                    ],
//                  ),
                  child: new Icon(Icons.account_circle),
                )
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.notifications),
              title: Container(child: Text('Notifications'),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Container(child: Text('Cart'),),
            ),
          ],
        ),
      ),
    );
  }
}
