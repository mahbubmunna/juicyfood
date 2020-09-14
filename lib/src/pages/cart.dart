import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/food.dart';
import 'package:juicyfood/src/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).cart),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          Get.snackbar('Order Placed', 'Your has been placed successfully', snackPosition: SnackPosition.BOTTOM);
        },
        minWidth: 150,
        height: 40,
        color: Theme.of(context).accentColor,
        textColor: Colors.white,
        shape: StadiumBorder(),
        child: Text('Place Order \$50', textScaleFactor: 1.2,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return CartItem(food: listOfFoods[index],);
              },
            )
          ],
        ),
      )
    );;
  }
}
