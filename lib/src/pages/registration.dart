import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        height: 40,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FlatButton(
            onPressed: () { Get.back(); },
            child: Text(S.of(context).alreadyHaveAccountSignIn),
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
                    labelText: S.of(context).username,
                    prefixIcon: Icon(Icons.perm_identity)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  prefixIcon: CountryCodePicker(
                    padding: EdgeInsets.only(left: 5),
                    initialSelection: initialCountry,
                  )
                ),
              ),
              SizedBox(height: 10,),
//              SizedBox(height: 10,),
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
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                height: 50,
                shape: StadiumBorder(),
                onPressed: () {  },
                child: Text(S.of(context).signUp, textScaleFactor: 1.4,),
              ),
              SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );;
  }
}
