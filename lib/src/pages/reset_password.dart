import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        height: 40,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FlatButton(
            onPressed: () { Get.back(); },
            child: Text('Back to login'),
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
                    labelText: S.of(context).email,
                    hintText: S.of(context).emailForPasswordResetLink,
                    prefixIcon: Icon(Icons.email)
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 20,),
              MaterialButton(
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                height: 50,
                shape: StadiumBorder(),
                onPressed: () { Get.snackbar(S.of(context).emailSent, S.of(context).resetLinkSentToYourEmail, snackPosition: SnackPosition.BOTTOM, colorText: Colors.black); },
                child: Text(S.of(context).reset, textScaleFactor: 1.4,),
              ),
              SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );;
  }
}
