import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:kf_drawer/kf_drawer.dart';

class SupportScreen extends KFDrawerContent {
  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).support),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset('assets/img/support.png'),
            Text(S.of(context).support247, textScaleFactor: 1.7,),
            SizedBox(height: 5,),
            Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.black12,
              elevation: 0,
              onPressed: () { Get.toNamed('/SendMessage'); },
              child: ListTile(
                leading: Icon(Icons.headset_mic),
                title: Text(S.of(context).onlineSupport),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              elevation: 0,
              color: Colors.black12,
              onPressed: () { Get.toNamed('/FAQ'); },
              child: ListTile(
                leading: Icon(Icons.calendar_view_day),
                title: Text(S.of(context).faq),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
