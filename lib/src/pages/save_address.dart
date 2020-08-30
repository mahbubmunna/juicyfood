import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class SaveAddressScreen extends StatefulWidget {
  @override
  _SaveAddressScreenState createState() => _SaveAddressScreenState();
}

class _SaveAddressScreenState extends State<SaveAddressScreen> {
  List _addresses = ['House Number 11, Block A, Road 1, Mirpur 11, Dhaka, Bangladesh',
    'Road 1, Mirpur 11, Dhaka, House Number 11, Block A, Bangladesh'];
  List _activeRecord = [false, false];
  TextEditingController _newAddressController = TextEditingController();
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).addNewAddress),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assets/img/save_address.png'),
              Text(S.of(context).addAddress, textScaleFactor: 1.7,),
              SizedBox(height: 5,),
              Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              Column(
                children: [
                  for(int index = 0; index < _addresses.length; index++)
                    CheckboxListTile(
                      title: Text(_addresses[index]),
                      onChanged: (bool value) {
                        setState(() {
                          for(int activeIndex = 0; activeIndex < _addresses.length; activeIndex++) {
                            _activeRecord[activeIndex] = false;
                          }
                          _activeRecord[index] = value;
                        });
                      },
                      value: _activeRecord[index],
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: _newAddressController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 20),
                    hintText: 'Add a New Delivery Address'
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                shape: StadiumBorder(),
                elevation: 0,
                color: Theme.of(context).accentColor,
                onPressed: () {
                  _addresses.add(_newAddressController.text);
                  _activeRecord.add(false);
                  setState(() {
                    _newAddressController.clear();
                  });
                  Get.snackbar('Saved', 'New Address Added', snackPosition: SnackPosition.BOTTOM); },
                child: ListTile(
                  leading: SizedBox(width: 20,),
                  title: Text(S.of(context).saveNewAddress, style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
