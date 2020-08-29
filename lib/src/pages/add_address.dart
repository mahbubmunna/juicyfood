import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  List _addresses = ['House Number 11, Block A, Road 1, Mirpur 11, Dhaka, Bangladesh',
    'Road 1, Mirpur 11, Dhaka, House Number 11, Block A, Bangladesh'];
  List _activeRecord = [false, false];

  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Address Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset('assets/img/add_address.png'),
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
            SizedBox(height: 20,),
            MaterialButton(
              shape: StadiumBorder(),
              elevation: 0,
              color: Theme.of(context).accentColor,
              onPressed: () { Get.toNamed('/SaveAddress'); },
              child: ListTile(
                leading: Icon(Icons.domain, color: Colors.white,),
                title: Text(S.of(context).addNewAddress, style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward, color: Colors.white,),
              ),
            ),
            SizedBox(height: 10,),
            // MaterialButton(
            //   shape: StadiumBorder(),
            //   elevation: 0,
            //   color: Colors.black12,
            //   onPressed: () {  },
            //   child: ListTile(
            //     leading: Icon(Icons.lock_outline),
            //     title: Text(S.of(context).changePassword),
            //     trailing: Icon(Icons.arrow_forward),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
