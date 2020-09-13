import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/functions/common.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/category.dart';
import 'package:juicyfood/src/widgets/category_item.dart';
import 'package:kf_drawer/kf_drawer.dart';

class FoodDiscoverScreen extends KFDrawerContent {
  @override
  _FoodDiscoverScreenState createState() => _FoodDiscoverScreenState();
}

class _FoodDiscoverScreenState extends State<FoodDiscoverScreen> {
  String _deliveryAddress = '71 Charter str. App. 5r. Boston, MA';
  String _country = 'United States of America.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).discoverFood),
        actions: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () => openSearchPage(context),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search Here', textScaleFactor: 1.1,),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            //Center(child: Text(S.of(context).discoverFood, textScaleFactor: 1.7, style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('Delivering to: ', textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(_deliveryAddress, textScaleFactor: 1.1,),
              ],
            ),
            Row(
              children: [
                Text(_country, textScaleFactor: 1.1,),
                SizedBox(width: 10,),
                Icon(Icons.edit)
              ],
            ),

            SizedBox(height: 20,),
            GridView.count(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(listOfCategories.length, (index) => CategoryItem(category: listOfCategories[index],)),
            )
          ],
        ),
      ),
    );
  }
}
