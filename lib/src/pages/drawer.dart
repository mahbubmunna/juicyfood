import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/functions/class_builder.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/src/pages/home.dart';
import 'package:juicyfood/src/pages/pages.dart';
import 'package:juicyfood/src/pages/support.dart';
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
      initialPage: ClassBuilder.fromString('PagesTestWidget'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Discover', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.public, color: Colors.white),
          page: PagesTestWidget(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Profiles',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.account_circle, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Promo Codes',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.local_offer, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Order History',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.assignment, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Payment Methods',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.monetization_on, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Share and Earn',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.card_giftcard, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Support',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.perm_phone_msg, color: Colors.white),
          page: SupportScreen(),
        ),
      ],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: KFDrawer(
//        borderRadius: 0.0,
//        shadowBorderRadius: 0.0,
//        menuPadding: EdgeInsets.all(0.0),
//        scrollable: true,
        controller: _drawerController,
        header: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://picsum.photos/200',
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(S.of(context).welcome, style: TextStyle(color: Colors.white),),
              Text('Mahbub Munna', textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
              Text('+8801771444469', style: TextStyle(color: Colors.black),),


            ],
          ),
        ),
        footer: KFDrawerItem(
          text: Text(
            'Log out',
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
            colors: [Color(0xffD60665), Color(0xffe24e7d)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
