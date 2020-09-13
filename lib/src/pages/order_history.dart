import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/src/widgets/order_history_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class OrderHistory extends KFDrawerContent {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Orders History"),
        actions: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).orderHistory,
                textScaleFactor: 1.8,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                  S.of(context).seeYourOrderHistoryWithItsOrderNumberAndClicking),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OrderHistoryListItem();
                },
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
