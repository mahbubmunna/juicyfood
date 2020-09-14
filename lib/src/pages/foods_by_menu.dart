import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:juicyfood/config/string.dart';
import 'package:juicyfood/functions/common.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/food.dart';
import 'package:juicyfood/models/menu.dart';
import 'package:juicyfood/models/restaurant.dart';
import 'package:juicyfood/models/route_argument.dart';
import 'package:juicyfood/src/widgets/food_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class FoodsByMenuScreen extends KFDrawerContent {
  RouteArgument routeArgument;
  Restaurant restaurant;
  Menu menu;
  FoodsByMenuScreen({this.routeArgument}) {
    restaurant = routeArgument.param[0];
    menu = routeArgument.param[1];
  }
  @override
  _FoodsByMenuScreenState createState() => _FoodsByMenuScreenState();
}

class _FoodsByMenuScreenState extends State<FoodsByMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.menu.menuName, widget),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Image.asset(localImagePath + 'restaurant_shop.png', height: 56, width: 63,),
            SizedBox(height: 5,),
            Center(child: Text(widget.restaurant.restaurantName, textScaleFactor: 1.8, style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Text(widget.restaurant.restaurantAllFoods, textScaleFactor: 1.2,),
            Row(
              children: [
                RatingBar(
                  initialRating: double.parse(widget.restaurant.restaurantRating),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 12,
                  itemCount: 5,
                  ignoreGestures: true,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(width: 10,),
                Text(widget.restaurant.restaurantRating, textScaleFactor: 1.2,),
                Text('(${widget.restaurant.restaurantTotalRating} ratings)', textScaleFactor: 1.2,),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text('read reviews >>', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.restaurant.restaurantDeliveryCharge),
                        Text(S.of(context).delivery, textScaleFactor: 1.2,)
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.restaurant.restaurantDeliveryTime),
                        Text(S.of(context).min, textScaleFactor: 1.2,)
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.restaurant.restaurantDistance),
                        Text(S.of(context).km, textScaleFactor: 1.2,)
                      ],
                    ),
                  ],
                ),
                Icon(Icons.location_on)
              ],
            ),
            SizedBox(height: 30,),
            Center(child: Text(widget.menu.menuName, textScaleFactor: 1.6, style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Text(S.of(context).crasBlanditConsequatSapienUtCursusDuisInMollisDe, textScaleFactor: 1.1,),
            SizedBox(height: 10,),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listOfFoods.length,
              itemBuilder: (context, index) {
                return FoodItem(food: listOfFoods[index],);
              },
            )
        ]
      ),
    ));;
  }
}
