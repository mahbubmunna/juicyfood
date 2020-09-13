import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryListItem extends StatefulWidget {
  @override
  _OrderHistoryListItemState createState() => _OrderHistoryListItemState();
}

class _OrderHistoryListItemState extends State<OrderHistoryListItem> {
  String _deliveryText = '02113., 71, Charter str., App. 5r.,  Boston, MA, USA';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/OrderDetailsScreen');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(6))
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Id: ${(shortHash(this) + shortHash(this)).toUpperCase()}',
                        textScaleFactor: 1.3,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('Delivery To: $_deliveryText')
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('\$ ${Random().nextInt(99)}', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Icon(Icons.check_circle, color: Colors.green,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
