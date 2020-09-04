import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:kf_drawer/kf_drawer.dart';

class SettingsScreen extends KFDrawerContent {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationSwitch = true;
  bool _locationSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).generalSettings),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).generalSettings, textScaleFactor: 1.8,),
            SizedBox(height: 5,),
            Text(S.of(context).youCanTweakYourSettingsFormHereCanChangeYour),
            SizedBox(height: 30,),
            ListTile(
              title: Text(S.of(context).notifications),
              trailing: Switch(
                value: _notificationSwitch,
                onChanged: (bool value) {
                  setState(() {
                    _notificationSwitch = value;
                  });
                },),
            ),
            Divider(),
            ListTile(
              title: Text(S.of(context).iAgreeToShareMyLocation),
              trailing: Switch(
                value: _locationSwitch,
                onChanged: (bool value) {
                  _locationSwitch = value;
                },),
            ),
            Divider(),
            ListTile(
              title: Text('Terms of Use'),
              onTap: () { Get.toNamed('/TermsOfUse');},
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () { Get.toNamed('/PrivacyPolicy');},
            )

          ],
        ),
      ),
    );
  }
}
