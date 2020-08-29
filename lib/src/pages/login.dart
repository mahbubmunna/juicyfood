import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/functions/common.dart';
import 'package:juicyfood/generated/l10n.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    changeStatusBarColor(context);

    return Scaffold(
      bottomSheet: SizedBox(
        height: 40,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FlatButton(
            onPressed: () { Get.toNamed('/Registration'); },
            child: Text(S.of(context).doNotHaveAccountSignUp),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 50,),
              SizedBox(
                height: 69,
                width: 69,
                child: Image.asset('assets/img/logo.jpg'),
              ),
              SizedBox(height: 10,),
              Center(child: Text(S.of(context).appName, textScaleFactor: 2,)),
              SizedBox(height: 10,),
              Center(child: Text(S.of(context).appSlogan, textScaleFactor: 1.1, textAlign: TextAlign.center,)),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.perm_identity)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline)
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                height: 50,
                shape: StadiumBorder(),
                onPressed: () { Get.offAllNamed('/Drawer');},
                child: Text(S.of(context).login, textScaleFactor: 1.4,),
              ),
              FlatButton(
                onPressed: () { Get.toNamed('/ResetPassword'); },
                child: Text(S.of(context).forgotPassword),
              ),
              SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );
  }
}
