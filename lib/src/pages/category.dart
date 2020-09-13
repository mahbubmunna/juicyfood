import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:juicyfood/functions/common.dart';
import 'package:juicyfood/models/category.dart';
import 'package:juicyfood/models/restaurant.dart';
import 'package:juicyfood/src/widgets/restaurant_list_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class CategoryScreen extends KFDrawerContent {
  Category category;
  CategoryScreen({this.category});
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int tag = 1;
  List<String> options = [
    'Over 3.0 ✪', 'Nearby', 'Food', 'Pickup',
    'Under 30 min','Sports', 'Education',
    'Fashion', 'Travel',  'Tech',
    'Science',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.category.categoryName, widget),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(widget.category.categoryImagePath, height: 25, width: 25,),
                    SizedBox(width: 10,),
                    Text(widget.category.categoryName, textScaleFactor: 1.8, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                Icon(Icons.edit_location)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(widget.category.categoryLongDetails),
          ),
          SizedBox(height: 20,),
          ChipsChoice<int>.single(
            value: tag,
            options: ChipsChoiceOption.listFrom<int, String>(
              source: options,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
            onChanged: (val) => setState(() => tag = val),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listOfRestaurant.length,
              itemBuilder: (context, index) {
                return RestaurantItem(restaurant: listOfRestaurant[index],);
              },
            ),
          )

        ],
      ),
    );
  }
}
