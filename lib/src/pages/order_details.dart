import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/config/string.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/src/widgets/ordered_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class OrderDetailsScreen extends KFDrawerContent {
  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).orderDetails),
        actions: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(height: 8,),
            Image.asset(localImagePath + 'invoice_1.png', height: 69, width: 69,),
            SizedBox(height: 5,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Order Id: ',
                    textScaleFactor: 1.6,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('${(shortHash(this) + shortHash(this)).toUpperCase()}',
                    textScaleFactor: 1.6),

                ],
              )
            ),
            SizedBox(height: 5,),
            Center(
              child: Text(
                S.of(context).seeYourOrderHistoryWithItsOrderNumberAndIndividual,
                textAlign: TextAlign.center,
                textScaleFactor: 1.1,
              ),
            ),
            SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return OrderedItem();
              },
            )
          ],
        ),
      ),
    );

  }
}
