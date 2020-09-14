import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:juicyfood/config/string.dart';
import 'package:juicyfood/models/food.dart';

class FoodItem extends StatefulWidget {
  Food food;
  FoodItem({this.food});
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all()
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(widget.food.foodImage, height: 72, width: 76,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.food.foodName, textScaleFactor: 1.3, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(widget.food.foodDetails, textScaleFactor: 1.2,),
                      Row(
                        children: [
                          RatingBar(
                            initialRating: double.parse(widget.food.foodRating),
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
                          Text(widget.food.foodRating, textScaleFactor: 1.2,),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text('\$${widget.food.foodPrice}', textScaleFactor: 1.3, style: TextStyle(fontWeight:  FontWeight.bold),),
                  IconButton(
                    icon: Image.asset(localImagePath + 'add-to-cart.png'),
                    onPressed: () {
                      Get.snackbar(
                        'Added',
                        'Item added to the cart',
                        snackPosition: SnackPosition.BOTTOM,
                         icon: Image.asset(localImagePath + 'add-to-cart.png'),);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
