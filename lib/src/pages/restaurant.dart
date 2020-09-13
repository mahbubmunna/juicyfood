import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:juicyfood/config/string.dart';
import 'package:juicyfood/functions/common.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/menu.dart';
import 'package:juicyfood/models/restaurant.dart';
import 'package:juicyfood/src/widgets/menu_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class RestaurantScreen extends KFDrawerContent {
  Restaurant restaurant;
  RestaurantScreen({this.restaurant});
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.restaurant.restaurantName, widget),
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
            SizedBox(height: 10,),
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
            Text(S.of(context).address, textScaleFactor: 1.1,),
            Text(S.of(context).phone, textScaleFactor: 1.1,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 5,),
                    Text(S.of(context).mondayfriday),
                  ],
                ),
                Text(widget.restaurant.restaurantRegularHours)
              ],
            ),
            SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 5,),
                    Text(S.of(context).weekends),
                  ],
                ),
                Text(widget.restaurant.restaurantOffDayHours)
              ],
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Text('Menu by categories', textScaleFactor: 1.4, style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text(S.of(context).crasBlanditConsequatSapienUtCursusDuisInMollisDe),
            SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listOfMenus.length,
              itemBuilder: (context, index) {
                return MenuItem(menu: listOfMenus[index],);
              },
            )


          ],
        ),
      ),
    );
  }
}
