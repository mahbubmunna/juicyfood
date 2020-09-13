import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:kf_drawer/kf_drawer.dart';

class PaymentMethodsScreen extends KFDrawerContent {
  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).paymentMethods),
        actions: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset('assets/img/payment_methods.png'),
            Text(S.of(context).paymentMethods, textScaleFactor: 1.7,),
            SizedBox(height: 5,),
            Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            MaterialButton(
              shape: StadiumBorder(),
              color: Colors.black12,
              elevation: 0,
              onPressed: () { },
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/img/credit-card.png'),
                ),
                title: Text(S.of(context).creditCard),
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
                leading: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/img/paypal.png'),
                ),
                title: Text(S.of(context).paypal),
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
                leading: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/img/apple-logo.png'),
                ),
                title: Text(S.of(context).applePay),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
