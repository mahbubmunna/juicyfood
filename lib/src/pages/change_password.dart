import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).changePassword),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assets/img/change_password.png'),
              Text(S.of(context).changePassword, textScaleFactor: 1.7,),
              SizedBox(height: 5,),
              Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: S.of(context).password,
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: S.of(context).confirmPassword,
                    prefixIcon: Icon(Icons.lock_outline)
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                shape: StadiumBorder(),
                elevation: 0,
                color: Theme.of(context).accentColor,
                onPressed: () { Get.snackbar('Saved', 'Your information saved successfully', snackPosition: SnackPosition.BOTTOM); },
                child: ListTile(
                  leading: SizedBox(width: 85,),
                  title: Text(S.of(context).save, textScaleFactor: 1.3, style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
