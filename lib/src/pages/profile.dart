import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).profile),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset('assets/img/profile_info.png'),
            Text(S.of(context).profileInformation, textScaleFactor: 1.7,),
            SizedBox(height: 5,),
            Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.black12,
              elevation: 0,
              onPressed: () { Get.toNamed('/AddAddress'); },
              child: ListTile(
                leading: Icon(Icons.domain),
                title: Text(S.of(context).addAddress),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              elevation: 0,
              color: Colors.black12,
              onPressed: () { Get.toNamed('/PersonalInformation'); },
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text(S.of(context).personalInformation),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              elevation: 0,
              color: Colors.black12,
              onPressed: () { Get.toNamed('/ChangePassword'); },
              child: ListTile(
                leading: Icon(Icons.lock_outline),
                title: Text(S.of(context).changePassword),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
