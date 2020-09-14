import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/menu.dart';
import 'package:juicyfood/models/restaurant.dart';
import 'package:juicyfood/models/route_argument.dart';

class MenuItem extends StatefulWidget {
  Menu menu;
  Restaurant restaurant;
  MenuItem({this.menu, this.restaurant});
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Get.toNamed('/FoodsByMenuScreen',arguments: RouteArgument(param: [widget.restaurant, widget.menu]));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(6)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.menu.menuName, textScaleFactor: 1.3, style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(S.of(context).crasBlanditConsequatSapienUtCursusDuisInMollisDe),
                SizedBox(height: 10,),
                Row(
                  children: [
                    RatingBar(
                      initialRating: double.parse(widget.menu.menuRating),
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
                    Text(widget.menu.menuRating, textScaleFactor: 1.2,),
                    Text('(${widget.menu.menuTotalRating} ratings)', textScaleFactor: 1.2,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(S.of(context).crasBlanditConsequatSapienUtCursusDuisInMollisDe)),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image.asset(widget.menu.menuImage, height: 75, width: 75,))
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
