import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:juicyfood/config/string.dart';
import 'package:juicyfood/models/food.dart';

class CartItem extends StatefulWidget {
  Food food;
  CartItem({this.food});
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int _foodQuantity = 1;

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
                  Text('\$${int.parse(widget.food.foodPrice) * _foodQuantity}',
                    textScaleFactor: 1.3,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: (){if (_foodQuantity > 0) setState(() {
                            _foodQuantity--;
                          });;},
                          child: Icon(Icons.remove, size: 16,)),
                      SizedBox(width: 4,),
                      Text('$_foodQuantity', textScaleFactor: 1.1,),
                      SizedBox(width: 4,),
                      GestureDetector(
                          onTap: (){ setState(() {
                            _foodQuantity++;
                          });},
                          child: Icon(Icons.add, size: 16,)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }
}
