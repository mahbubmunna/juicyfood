import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class PersonalInformationScreen extends StatefulWidget {
  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  String initialCountry = 'US';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).personalInformation),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assets/img/profile_info.png'),
              Text(S.of(context).personalInformation, textScaleFactor: 1.7,),
              SizedBox(height: 5,),
              Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                    labelText: S.of(context).nameLastName,
                    prefixIcon: Icon(Icons.perm_identity)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email)
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
    );;
  }
}
