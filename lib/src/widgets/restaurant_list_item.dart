import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/models/restaurant.dart';

class RestaurantItem extends StatefulWidget {
  Restaurant restaurant;
  RestaurantItem({this.restaurant});
  @override
  _RestaurantItemState createState() => _RestaurantItemState();
}

class _RestaurantItemState extends State<RestaurantItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/RestaurantScreen', arguments: widget.restaurant);
      },
      child: Column(
        children: [
          Container(
            height: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(widget.restaurant.restaurantFoodItemPicture)
              )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(widget.restaurant.restaurantName, textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(' / ', textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(widget.restaurant.restaurantRating, textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(' ✪', textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Text(widget.restaurant.restaurantDeliveryTime)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.restaurant.restaurantAllFoods),
              Text('Delivery: ${widget.restaurant.restaurantDeliveryCharge}')
            ],
          ),
          SizedBox(height: 5,),
          Divider(),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
