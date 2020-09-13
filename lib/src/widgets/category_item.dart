import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/models/category.dart';

class CategoryItem extends StatefulWidget {
  Category category;
  CategoryItem({this.category});
  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/CategoryScreen',arguments: widget.category);
      },
      child: Card(
        shape: StadiumBorder(),
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.category.categoryImagePath, height: 55, width: 55,),
              SizedBox(height: 10,),
              Text(widget.category.categoryName, textScaleFactor: 1.4,),
              Text(widget.category.categoryDetails)
            ],
          ),
        ),
      ),
    );
  }
}
