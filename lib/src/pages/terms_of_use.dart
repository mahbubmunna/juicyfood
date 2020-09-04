import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class TermsOfUseScreen extends StatefulWidget {
  @override
  _TermOfUseScreenState createState() => _TermOfUseScreenState();
}

class _TermOfUseScreenState extends State<TermsOfUseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).termsOfUse),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/Drawer');
            },
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(S.of(context).termsOfUse, textScaleFactor: 1.8,),
            SizedBox(height: 5,),
            SingleChildScrollView(child: Text(S.of(context).dummyTermNPolicy, textScaleFactor: 1.1,)),
          ],
        ),
      ),
    );;
  }
}
