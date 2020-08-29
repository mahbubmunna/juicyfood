import 'package:flutter/material.dart';
import 'package:juicyfood/generated/l10n.dart';

class PersonalInformationScreen extends StatefulWidget {
  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).personalInformation),
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
              onPressed: () {  },
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
              onPressed: () {  },
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
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.lock_outline),
                title: Text(S.of(context).changePassword),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
